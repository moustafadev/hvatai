import 'dart:async';
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/datasources/local/app_local.dart';
import 'package:hvatai/features/chat/presentation/pages/chat_service.dart';
import 'package:hvatai/features/home/data/model/join_stream_model/join_stream_model.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/stream/data/models/bid_stream/bid_stream_response.dart';
import 'package:hvatai/features/stream/data/models/bid_placed/bid_placed_event.dart';
import 'package:hvatai/features/stream/data/models/stream_comment/stream_comment_model.dart';
import 'package:hvatai/features/stream/data/models/stream_updated/stream_updated_event.dart';
import 'package:hvatai/features/stream/data/models/bid_session/bid_session_response.dart';
import 'package:hvatai/features/stream/data/models/viewer_joined/viewer_joined_event.dart';
import 'package:hvatai/features/stream/data/models/bid_winner/bid_winner_event.dart';
import 'package:hvatai/features/stream/domain/usecases/add_stream_bids_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_stream_bids_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_bid_session_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_stream_comments_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/leave_stream_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/send_stream_comment_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_subscribed_users_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/toggle_subscription_usecase.dart';
import 'package:livekit_client/livekit_client.dart';
import 'package:pusher_client_socket/pusher_client_socket.dart';

part 'viewer_stream_cubit.freezed.dart';
part 'viewer_stream_state.dart';

class ViewerStreamCubit extends Cubit<ViewerStreamState> {
  ViewerStreamCubit(
    this._getComments,
    this._sendComment,
    this._leaveUsecase,
    this._getBids,
    this._addBidUsecase,
    this._getBidSessionUsecase,
    this._getSubscribedUsersUsecase,
    this._toggleSubscriptionUsecase,
    AppLocal appLocal, {
    required StreamDataModel stream,
    JoinStreamData? joinData,
  }) : super(ViewerStreamState(
          stream: stream,
          joinData: joinData,
          viewerCount: joinData?.stream.viewerCount ?? 0,
          currentUserId: appLocal.getUserId(),
        )) {
    _initialize();
  }

  final GetStreamCommentsUsecase _getComments;
  final SendStreamCommentUsecase _sendComment;
  final LeaveStreamUsecase _leaveUsecase;
  final GetStreamBidsUsecase _getBids;
  final AddStreamBidUsecase _addBidUsecase;
  final GetBidSessionUsecase _getBidSessionUsecase;
  final GetSubscribedUsersUsecase _getSubscribedUsersUsecase;
  final ToggleSubscriptionUsecase _toggleSubscriptionUsecase;

  Timer? _timer;
  TextEditingController controller = TextEditingController();
  final _pusherManager = PusherManager();
  PusherClient? _pusher;
  Channel? _streamChannel;

  // ================== Initialization ==================
  Future<void> _initialize() async {
    emit(state.copyWith(isInitializing: true));

    // Initialize timer
    _startTimer();

    // Initialize viewer count
    emit(state.copyWith(
      viewerCount: state.stream.viewerCount ?? 0,
      isInitializing: false,
    ));

    Future.wait([
        _loadActiveBidSession(),
        _loadSubscriptionStatus(),
        loadInitialComments(streamId: state.stream.id ?? 0),
    ]);

    // Initialize Pusher
    await _initPusher();

    // Initialize LiveKit
    await _initLiveKit();
  }

  // ================== Pusher ==================
  Future<void> _initPusher() async {
    final streamId = state.stream.id;
    if (streamId == null) {
      debugPrint('⚠️ Stream id is null — skip socket subscription');
      return;
    }

    try {
      _pusher = _pusherManager.initializePusher();
      final channelName = 'stream.$streamId';
      debugPrint('🔗 Subscribing to $channelName');

      _streamChannel = _pusher!.subscribe(channelName);

      _streamChannel!.bind('pusher:subscription_succeeded', (_) {
        debugPrint('✅ Subscribed: $channelName');
        emit(state.copyWith(isPusherConnected: true));
      });

      _streamChannel!.bind('pusher:subscription_error', (e) {
        debugPrint('❌ Subscription error on $channelName: $e');
        emit(state.copyWith(isPusherConnected: false));
      });

      _streamChannel!.bind(
        'comment.added',
        (raw) => _handleComment(raw, source: channelName),
      );

      _streamChannel!.bind(
        'CommentAdded',
        (raw) => _handleComment(raw, source: channelName),
      );

      _streamChannel!.bind(
        'viewer.joined',
        (raw) => updateViewerCount(
          ViewerJoinedEvent.fromJson(raw).viewerCount,
        ),
      );

      _streamChannel!.bind(
        'viewer.left',
        (raw) => updateViewerCount(
          ViewerJoinedEvent.fromJson(raw).viewerCount,
        ),
      );

      _streamChannel!.bind(
        // TODO: handle bid placed time to start timer
        'bid.placed',
        (raw) => _handleBid(raw, source: channelName),
      );

      _streamChannel!.bind(
        'BidPlaced',
        (raw) => _handleBid(raw, source: channelName),
      );
      _streamChannel!.bind(
        'bid.winner.determined',
        (raw) => _handleWinner(raw, source: channelName),
      );

      _streamChannel!.bind(
        'stream.updated',
        (raw) => _handleStreamUpdated(StreamUpdatedEvent.fromJson(raw),
            source: channelName),
      );
      _streamChannel!.bind(
        'stream.product.bidding.toggled',
        (raw) => _handleProductToggle(raw, source: channelName),
      );
    } catch (e) {
      debugPrint('❌ Error initializing Pusher: $e');
      emit(state.copyWith(
        isPusherConnected: false,
        errorMessage: 'Failed to connect to real-time updates',
      ));
    }
  }

  void _handleComment(dynamic raw, {required String source}) {
    try {
      final model = StreamCommentModel.fromJson(raw['comment']);
      addIncomingComment(model);
    } catch (e, st) {
      debugPrint('❌ [$source] comment parse error: $e');
      debugPrintStack(stackTrace: st);
    }
  }

  void _handleBid(dynamic raw, {required String source}) {
    try {
      final dataMap = _normalizeSocketPayload(raw);
      final event = BidPlacedEvent.fromJson(dataMap);
      
      // Update timer from the new bid session when a bid is placed
      if (event.bidSession != null) {
        final session = event.bidSession!;
        DateTime? timerEndTime = session.sessionEndsAt;
        int? timerRemainingSeconds = session.remainingSeconds;

        // Calculate end time if we have remaining seconds but no end time
        if (timerEndTime == null && timerRemainingSeconds != null && timerRemainingSeconds > 0) {
          timerEndTime = DateTime.now().add(Duration(seconds: timerRemainingSeconds));
        }

        // Calculate remaining seconds if we have end time but no remaining seconds
        if (timerRemainingSeconds == null && timerEndTime != null) {
          timerRemainingSeconds = timerEndTime.difference(DateTime.now()).inSeconds;
          if (timerRemainingSeconds < 0) {
            timerRemainingSeconds = 0;
          }
        }

        if (timerEndTime != null || timerRemainingSeconds != null) {
          debugPrint('⏰ Updating bid session timer (new bid placed) - Remaining: ${timerRemainingSeconds}s, EndTime: $timerEndTime');
          
          emit(state.copyWith(
            currentBidEndTime: timerEndTime,
            currentBidRemainingSeconds: timerRemainingSeconds,
          ));
        }
      }
      
      // Also reload the active bid session to get updated product and bid count
      _loadActiveBidSession();
    } catch (e, st) {
      debugPrint('❌ [$source] bid parse error: $e');
      debugPrintStack(stackTrace: st);
    }
  }

  void _handleWinner(dynamic raw, {required String source}) {
    try {
      final dataMap = _normalizeSocketPayload(raw);
      final event = BidWinnerEvent.fromJson(dataMap);
      emit(state.copyWith(
        currentWinner: event,
        isSelectingWinner: false,
        currentBidRemainingSeconds: 0,
        currentBidEndTime: null,
      ));
    } catch (e, st) {
      debugPrint('❌ [$source] winner parse error: $e');
      debugPrintStack(stackTrace: st);
    }
  }

  void _handleProductToggle(dynamic raw, {required String source}) {
    try {
      final dataMap = _normalizeSocketPayload(raw);
      final streamProduct = dataMap['stream_product'];
      if (streamProduct is! Map<String, dynamic>) return;

      final toggledStreamId = streamProduct['stream_id'];
      final currentStreamId = state.stream.id;
      if (toggledStreamId != null && currentStreamId != null) {
        if (toggledStreamId != currentStreamId) return;
      }

      final toggledProduct = StreamProductModel.fromJson(
        Map<String, dynamic>.from(streamProduct),
      );

      emit(state.copyWith(
        activeStreamProduct: toggledProduct,
        currentStreamProductId:
            toggledProduct.id ?? toggledProduct.productId ?? state.currentStreamProductId,
        isSelectingWinner: false,
        currentWinner: null,
      ));

      _loadActiveBidSession();
    } catch (e, st) {
      debugPrint('❌ [$source] product toggle parse error: $e');
      debugPrintStack(stackTrace: st);
    }
  }

  void _handleStreamUpdated(StreamUpdatedEvent event,
      {required String source}) {
    if (event.updateType == 'ended') {
      debugPrint('🔴 Stream ended - closing viewer');
      emit(state.copyWith(isStreamEnded: true));
      return;
    }
    final updatedStream = event.stream;
    final viewerCount = updatedStream.viewerCount ?? state.viewerCount;
    emit(state.copyWith(stream: updatedStream, viewerCount: viewerCount));
    _loadActiveBidSession();
  }

  // ================== LiveKit ==================
  Future<void> _initLiveKit() async {
    // Get LiveKit credentials from joinData
    final credentials = {
      'token': state.joinData?.token,
      'room': state.joinData?.room,
      'livekitUrl': state.joinData?.livekitUrl,
    };

    if (credentials['token'] == null) {
      debugPrint('❌ Failed to get LiveKit credentials');
      emit(state.copyWith(
        isConnected: false,
        errorMessage: 'Failed to get stream credentials',
      ));
      return;
    }

    final token = credentials['token']!;
    final serverUrl = credentials['livekitUrl'] ?? 'wss://livekit.khvatai.ru';
    final roomName = credentials['room'] ?? '';

    debugPrint('🔗 Connecting to LiveKit room: $roomName at $serverUrl');

    // Retry connection with exponential backoff
    const maxRetries = 3;
    const initialDelay = Duration(seconds: 2);

    for (int attempt = 0; attempt < maxRetries; attempt++) {
      try {
        // Clean up previous room if exists
        if (state.room != null && attempt > 0) {
          try {
            await state.room!.disconnect();
            await state.room!.dispose();
          } catch (_) {
            // Ignore cleanup errors
          }
        }

        // Create room and connect
        final room = Room();
        room.addListener(_onRoomUpdate);

        // Connect to the room with timeout
        await room.connect(serverUrl, token).timeout(
          const Duration(seconds: 30),
          onTimeout: () {
            throw Exception(
              'Connection timeout after 30 seconds',
            );
          },
        );

        debugPrint('✅ Connected to LiveKit room (attempt ${attempt + 1})');

        emit(state.copyWith(
          isConnected: true,
          room: room,
          remoteParticipant: room.remoteParticipants.values.firstOrNull,
        ));

        // Start receiving
        await _startReceiving();

        // Success - exit retry loop
        return;
      } catch (e, st) {
        final isLastAttempt = attempt == maxRetries - 1;
        final delay = Duration(
          milliseconds: initialDelay.inMilliseconds * (1 << attempt),
        );

        debugPrint(
          '❌ Failed to connect to LiveKit (attempt ${attempt + 1}/$maxRetries): $e',
        );

        if (isLastAttempt) {
          debugPrint('❌ All connection attempts failed');
          debugPrintStack(stackTrace: st);
          emit(state.copyWith(
            isConnected: false,
            errorMessage: 'Failed to connect to stream server',
          ));
          // Clean up on final failure
          if (state.room != null) {
            try {
              await state.room!.disconnect();
              await state.room!.dispose();
            } catch (_) {
              // Ignore cleanup errors
            }
            emit(state.copyWith(room: null));
          }
          return;
        }

        // Wait before retrying (exponential backoff)
        debugPrint('⏳ Retrying in ${delay.inSeconds} seconds...');
        await Future.delayed(delay);
      }
    }
  }

  void _onRoomUpdate() {
    final remoteParticipant = state.room?.remoteParticipants.values.firstOrNull;

    emit(state.copyWith(
      remoteParticipant: remoteParticipant,
    ));

    // Update remote video and audio tracks
    if (remoteParticipant != null) {
      _updateRemoteVideoTrack(remoteParticipant);
      _updateRemoteAudioTrack(remoteParticipant);
    }
  }

  void _updateRemoteVideoTrack(RemoteParticipant remoteParticipant) {
    VideoTrack? track;

    // Find the first video track publication that has a subscribed track
    for (final publication in remoteParticipant.videoTrackPublications) {
      if (publication.subscribed && publication.track != null) {
        track = publication.track as VideoTrack;
        break;
      }
    }

    // If no subscribed track found but publications exist, log for debugging
    if (track == null && remoteParticipant.videoTrackPublications.isNotEmpty) {
      final pub = remoteParticipant.videoTrackPublications.first;
      debugPrint(
        '⚠️ Video track publication exists but not subscribed yet. '
        'subscribed: ${pub.subscribed}, track: ${pub.track != null}',
      );
    }

    emit(state.copyWith(remoteVideoTrack: track));

    // Debug logging
    if (state.remoteVideoTrack == null) {
      debugPrint(
        '⚠️ No remote video track available yet. '
        'Publications: ${remoteParticipant.videoTrackPublications.length}',
      );
    } else {
      debugPrint('✅ Remote video track found');
    }
  }

  void _updateRemoteAudioTrack(RemoteParticipant remoteParticipant) {
    RemoteAudioTrack? audioTrack;

    // Find the first audio track publication that has a subscribed track
    for (final publication in remoteParticipant.audioTrackPublications) {
      if (publication.subscribed && publication.track != null) {
        audioTrack = publication.track as RemoteAudioTrack;
        break;
      }
    }

    final currentState = state;
    emit(currentState.copyWith(remoteAudioTrack: audioTrack));

    // Apply current mute state to the audio track
    if (audioTrack != null) {
      _applyAudioMuteState(audioTrack, currentState.isAudioMuted);
      debugPrint('✅ Remote audio track found');
    } else if (remoteParticipant.audioTrackPublications.isNotEmpty) {
      debugPrint(
        '⚠️ Audio track publication exists but not subscribed yet',
      );
    }
  }

  void _applyAudioMuteState(RemoteAudioTrack audioTrack, bool isMuted) {
    try {
      // Control remote audio by enabling/disabling the mediaStreamTrack
      // This effectively mutes/unmutes the audio playback
      audioTrack.mediaStreamTrack.enabled = !isMuted;
      debugPrint('🔇 Remote audio track ${isMuted ? 'muted' : 'unmuted'}');
    } catch (e) {
      debugPrint('⚠️ Could not control audio track: $e');
      // State is still tracked for UI feedback
    }
  }

  Future<void> _startReceiving() async {
    if (state.room == null) {
      debugPrint('⚠️ Room not ready');
      return;
    }

    // Wait for remote participants
    if (state.room!.remoteParticipants.isEmpty) {
      debugPrint('⏳ Waiting for remote participants...');
      return;
    }

    _onRoomUpdate();
    debugPrint('✅ Receiving stream');
  }

  // ================== Stream Control ==================
  Future<bool> leaveStream({required int streamId}) async {
    final result = await _leaveUsecase(LeaveStreamParams(streamId: streamId));
    return await result.fold(
      (err) async => false,
      (ok) async => true,
    );
  }

  // ================== Comments ==================
  Future<void> loadInitialComments({required int streamId}) async {
    emit(state.copyWith(
      isLoadingComments: true,
      commentsError: '',
      commentsPage: 1,
      commentsHasMore: true,
      comments: const [],
    ));

    final res = await _getComments(GetStreamCommentsParams(
      streamId: streamId,
      page: 1,
      perPage: state.commentsPerPage,
    ));

    res.fold(
      (err) => emit(state.copyWith(
        isLoadingComments: false,
        commentsError: err,
      )),
      (pageData) {
        final items = pageData.data?.data ?? <StreamCommentModel>[];
        final hasMore = (pageData.data?.nextPageUrl != null) &&
            (pageData.data!.currentPage! < (pageData.data!.lastPage ?? 1));

        emit(state.copyWith(
          isLoadingComments: false,
          comments: items,
          commentsPage: 1,
          commentsHasMore: hasMore,
        ));
      },
    );
  }

  Future<void> loadMoreComments({required int streamId}) async {
    if (state.isLoadingComments || !state.commentsHasMore) return;

    emit(state.copyWith(isLoadingComments: true, commentsError: ''));

    final nextPage = state.commentsPage + 1;

    final res = await _getComments(GetStreamCommentsParams(
      streamId: streamId,
      page: nextPage,
      perPage: state.commentsPerPage,
    ));

    res.fold(
      (err) => emit(state.copyWith(
        isLoadingComments: false,
        commentsError: err,
      )),
      (pageData) {
        final items = pageData.data?.data ?? <StreamCommentModel>[];
        final current = List<StreamCommentModel>.from(state.comments)
          ..addAll(items);

        final hasMore = (pageData.data?.nextPageUrl != null) &&
            (pageData.data!.currentPage! < (pageData.data!.lastPage ?? 1));

        emit(state.copyWith(
          isLoadingComments: false,
          comments: current,
          commentsPage: nextPage,
          commentsHasMore: hasMore,
        ));
      },
    );
  }

  void updateCommentText(String text) {
    emit(state.copyWith(commentText: text));
  }

  void updateFirstBidInput(String text) {
    final trimmed = text.trim();
    String? errorMessage;
    bool isButtonEnabled = false;

    if (trimmed.isEmpty) {
      errorMessage = null;
      isButtonEnabled = false;
    } else {
      final amount = double.tryParse(trimmed);
      if (amount == null) {
        errorMessage = 'Неверный формат суммы';
        isButtonEnabled = false;
      } else {
        // Get minimum price from active product
        final activeProduct = state.activeStreamProduct;
        final minimumPrice = double.tryParse(
              activeProduct?.startingPrice ?? '',
            ) ??
            0.0;

        if (amount < minimumPrice) {
          errorMessage =
              'Ставка должна быть не менее ${minimumPrice.toStringAsFixed(0)} ₽';
          isButtonEnabled = false;
        } else {
          errorMessage = null;
          isButtonEnabled = true;
        }
      }
    }

    emit(state.copyWith(
      firstBidInputText: text,
      firstBidErrorMessage: errorMessage,
      isFirstBidButtonEnabled: isButtonEnabled,
    ));
  }

  void placeBidFromFirstBidSheet({
    required int streamId,
    required int streamProductId,
  }) {
    final text = state.firstBidInputText.trim();
    if (text.isEmpty) {
      emit(state.copyWith(
        firstBidErrorMessage: 'Пожалуйста, введите ставку',
      ));
      return;
    }

    final amount = double.tryParse(text);
    if (amount == null) {
      emit(state.copyWith(
        firstBidErrorMessage: 'Неверный формат суммы',
      ));
      return;
    }

    // Get minimum price from active product
    final activeProduct = state.activeStreamProduct;
    final minimumPrice = double.tryParse(
          activeProduct?.startingPrice ?? '',
        ) ??
        0.0;

    if (amount < minimumPrice) {
      emit(state.copyWith(
        firstBidErrorMessage:
            'Ставка должна быть не менее ${minimumPrice.toStringAsFixed(0)} ₽',
      ));
      return;
    }

    // Place the bid
    placeBid(
      streamId: streamId,
      streamProductId: streamProductId,
      bidAmount: amount.toStringAsFixed(2),
    );
  }

  Future<void> sendCommentToServer({
    required int streamId,
    String type = 'comment',
  }) async {
    final text = state.commentText.trim();
    controller.clear();

    emit(state.copyWith(
      isSendingComment: true,
      sendCommentError: '',
      commentText: '',
    ));

    final res = await _sendComment(SendStreamCommentParams(
      streamId: streamId,
      message: text,
    ));

    res.fold(
      (err) {
        emit(state.copyWith(
          isSendingComment: false,
          sendCommentError: err,
        ));
      },
      (created) {
        emit(state.copyWith(isSendingComment: false));
      },
    );
  }

  void addIncomingComment(StreamCommentModel model) {
    final next = List<StreamCommentModel>.from(state.comments)..add(model);
    emit(state.copyWith(comments: next));
  }

  // ================== Bids ==================
  Future<void> loadInitialBids({required int streamId}) async {
    emit(state.copyWith(
      isLoadingBids: true,
      bidsError: '',
      bidsPage: 1,
      bidsHasMore: true,
      bids: const [],
    ));

    final res = await _getBids(GetStreamBidsParams(
      streamId: streamId,
      page: 1,
      perPage: state.bidsPerPage,
    ));

    res.fold(
      (err) => emit(state.copyWith(
        isLoadingBids: false,
        bidsError: err,
      )),
      (pageData) {
        final items = pageData.data.data;
        final currentPage = pageData.data.currentPage;
        final lastPage = pageData.data.lastPage ?? 1;
        final hasMore =
            (pageData.data.nextPageUrl != null) && (currentPage < lastPage);

        emit(state.copyWith(
          isLoadingBids: false,
          bids: items,
          bidsPage: 1,
          bidsHasMore: hasMore,
        ));
      },
    );
  }

  Future<void> loadMoreBids({required int streamId}) async {
    if (state.isLoadingBids || !state.bidsHasMore) return;

    emit(state.copyWith(isLoadingBids: true, bidsError: ''));

    final nextPage = state.bidsPage + 1;

    final res = await _getBids(GetStreamBidsParams(
      streamId: streamId,
      page: nextPage,
      perPage: state.bidsPerPage,
    ));

    res.fold(
      (err) => emit(state.copyWith(
        isLoadingBids: false,
        bidsError: err,
      )),
      (pageData) {
        final items = pageData.data.data;
        final merged = List<BidStreamItem>.from(state.bids)..addAll(items);

        final currentPage = pageData.data.currentPage;
        final lastPage = pageData.data.lastPage ?? 1;
        final hasMore =
            (pageData.data.nextPageUrl != null) && (currentPage < lastPage);

        emit(state.copyWith(
          isLoadingBids: false,
          bids: merged,
          bidsPage: nextPage,
          bidsHasMore: hasMore,
        ));
      },
    );
  }

  Future<void> placeBid({
    required int streamId,
    required int streamProductId,
    required String bidAmount,
  }) async {
    emit(state.copyWith(
      isPlacingBid: true,
      addBidError: '',
    ));

    final res = await _addBidUsecase(AddStreamBidParams(
      streamId: streamId,
      streamProductId: streamProductId,
      bidAmount: bidAmount,
    ));

    res.fold(
      (err) => emit(state.copyWith(
        isPlacingBid: false,
        addBidError: err,
      )),
      (createdBid) {
        final updated = List<BidStreamItem>.from(state.bids)
          ..insert(0, createdBid);
        final amount = double.tryParse(bidAmount) ?? 0.0;
        emit(state.copyWith(
          isPlacingBid: false,
          bids: updated,
          showBidSuccess: true,
          successfulBidAmount: amount,
        ));
        _loadActiveBidSession();
      },
    );
  }

  void addIncomingBid(BidStreamItem item) {
    final updated = List<BidStreamItem>.from(state.bids)..insert(0, item);
    emit(state.copyWith(bids: updated));
  }

  Future<void> _loadActiveBidSession() async {
    final streamId = state.stream.id;
    if (streamId == null) return;

    final result =
        await _getBidSessionUsecase(GetBidSessionParams(streamId: streamId));

    result.fold(
      (err) => debugPrint('❌ Failed to load bid session: $err'),
      (response) {
        final data = response.data;
        if (data == null) return;

        final hasSession = data.hasSession ?? false;
        if (!hasSession) {
          emit(state.copyWith(
            activeStreamProduct: null,
            currentStreamProductId: null,
            currentBidEndTime: null,
            currentBidRemainingSeconds: null,
            currentBidTotalBids: 0,
            currentWinner: null,
            isSelectingWinner: false,
          ));
          return;
        }

        final product = _mapBidSessionDataToStreamProduct(data);
        final timing = _resolveBidTiming(
          product: product,
          session: data,
        );

        final isSessionActive =
            data.bidSession?.status == 'active' && (data.remainingSeconds ?? 0) > 0;

        emit(state.copyWith(
          activeStreamProduct: product ?? state.activeStreamProduct,
          currentStreamProductId:
              product?.id ?? data.streamProductId ?? state.currentStreamProductId,
          currentBidEndTime: timing.endTime,
          currentBidRemainingSeconds: timing.remainingSeconds,
          currentBidTotalBids: data.bidSession?.totalBids ?? state.currentBidTotalBids,
          currentWinner: isSessionActive ? null : state.currentWinner,
          isSelectingWinner: isSessionActive ? false : state.isSelectingWinner,
        ));
      },
    );
  }

  StreamProductModel? _mapBidSessionDataToStreamProduct(
    BidSessionData data,
  ) {
    final streamId = state.stream.id;
    final product = data.product;

    if (streamId == null && data.streamProductId == null) {
      return null;
    }

    final currentHighestBid = data.bidSession?.currentHighestBid ?? data.startingBid;
    final minimumBidIncrement = data.minimumBidIncrement ?? 0;
    final bidPrice = currentHighestBid == null
        ? null
        : currentHighestBid + minimumBidIncrement;

    return StreamProductModel(
      id: data.streamProductId,
      streamId: streamId,
      productId: product?.id,
      startingPrice: data.startingBid?.toString(),
      currentBid: bidPrice?.toString(),
      bidDurationSeconds: data.bidSession?.sessionDurationSeconds,
      biddingEnabled: data.biddingEnabled,
      isActive: data.isActive,
      displayOrder: null,
      remainingSeconds: data.remainingSeconds,
      createdAt: null,
      updatedAt: null,
      product: _mapProductToEmbedded(product),
    );
  }

  StreamEmbeddedProductModel? _mapProductToEmbedded(ProductModel? product) {
    if (product == null) return null;
    return StreamEmbeddedProductModel(
      id: product.id,
      name: product.productName,
      description: product.productDescription,
      userId: product.userId,
      categoryId: product.categoryId,
      location: null,
      latitude: null,
      longitude: null,
    );
  }

  ({DateTime? endTime, int? remainingSeconds}) _resolveBidTiming({
    StreamProductModel? product,
    BidSessionData? session,
  }) {
    DateTime? endTime = session?.bidSession?.endsAt;
    int? remainingSeconds = session?.remainingSeconds ?? product?.remainingSeconds;

    if (endTime != null) {
      remainingSeconds = endTime.difference(DateTime.now()).inSeconds;
    } else if (remainingSeconds != null && remainingSeconds > 0) {
      endTime = DateTime.now().add(Duration(seconds: remainingSeconds));
    }

    if (remainingSeconds != null && remainingSeconds < 0) {
      remainingSeconds = 0;
    }

    return (endTime: endTime, remainingSeconds: remainingSeconds);
  }

  // ================== Viewer Count ==================
  void updateViewerCount(int viewerCount) {
    emit(state.copyWith(viewerCount: viewerCount));
  }

  Future<void> _loadSubscriptionStatus() async {
    final broadcasterId = state.stream.user?.id;
    if (broadcasterId == null) return;

    emit(state.copyWith(isLoadingSubscription: true));
    final result = await _getSubscribedUsersUsecase(unit);

    result.fold(
      (_) => emit(state.copyWith(isLoadingSubscription: false)),
      (response) {
        final isSubscribed = response.data
            .any((user) => user.id == broadcasterId);
        emit(state.copyWith(
          isLoadingSubscription: false,
          isSubscribed: isSubscribed,
        ));
      },
    );
  }

  Future<void> toggleSubscription() async {
    final broadcasterId = state.stream.user?.id;
    if (broadcasterId == null || state.isTogglingSubscription) return;

    emit(state.copyWith(isTogglingSubscription: true));
    final result = await _toggleSubscriptionUsecase(
      ToggleSubscriptionParams(userId: broadcasterId),
    );

    result.fold(
      (_) => emit(state.copyWith(isTogglingSubscription: false)),
      (_) {
        emit(state.copyWith(isTogglingSubscription: false));
        _loadSubscriptionStatus();
      },
    );
  }

  void hideBidSuccess() {
    emit(state.copyWith(
      showBidSuccess: false,
      successfulBidAmount: null,
      firstBidInputText: '',
      firstBidErrorMessage: null,
      isFirstBidButtonEnabled: false,
    ));
  }

  // ================== Audio ==================
  Future<void> toggleAudio() async {
    final newMutedState = !state.isAudioMuted;
    emit(state.copyWith(isAudioMuted: newMutedState));
    
    // Apply mute state to remote audio track
    final audioTrack = state.remoteAudioTrack;
    if (audioTrack != null) {
      _applyAudioMuteState(audioTrack, newMutedState);
      debugPrint('🔇 Audio ${newMutedState ? 'muted' : 'unmuted'}');
    } else {
      debugPrint('⚠️ No remote audio track available yet');
      // State is still updated for UI feedback
    }
  }

  // ================== Timer ==================
  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      final currentState = state;
      final nextStreamSeconds = currentState.streamSeconds + 1;

      DateTime? endTime = currentState.currentBidEndTime;
      int? remaining = currentState.currentBidRemainingSeconds;

      if (endTime != null) {
        remaining = endTime.difference(DateTime.now()).inSeconds;
        if (remaining < 0) {
          remaining = 0;
          endTime = null;
        }
      } else if (remaining != null) {
        if (remaining > 0) {
          remaining = remaining - 1;
        } else {
          remaining = 0;
        }
      }

      emit(currentState.copyWith(
        streamSeconds: nextStreamSeconds,
        currentBidRemainingSeconds: remaining,
        currentBidEndTime: endTime,
        isSelectingWinner: _resolveSelectingWinner(
          currentState: currentState,
          nextRemaining: remaining,
        ),
      ));
    });
  }

  bool _resolveSelectingWinner({
    required ViewerStreamState currentState,
    int? nextRemaining,
  }) {
    final previousRemaining = currentState.currentBidRemainingSeconds;
    var selecting = currentState.isSelectingWinner;

    if (nextRemaining == null || nextRemaining > 0) {
      selecting = false;
    } else if ((previousRemaining ?? 0) > 0 && nextRemaining == 0) {
      selecting = currentState.currentWinner == null;
    }

    return selecting;
  }

  Map<String, dynamic> _normalizeSocketPayload(dynamic raw) {
    Map<String, dynamic> map;
    if (raw is String) {
      map = Map<String, dynamic>.from(jsonDecode(raw));
    } else if (raw is Map) {
      map = Map<String, dynamic>.from(raw);
    } else {
      throw FormatException('Unsupported payload type: ${raw.runtimeType}');
    }

    final data = map['data'];
    if (data is String) {
      return Map<String, dynamic>.from(jsonDecode(data));
    }
    if (data is Map) {
      return Map<String, dynamic>.from(data);
    }
    return map;
  }

  // ================== Cleanup ==================
  Future<void> cleanup() async {
    _timer?.cancel();
    controller.dispose();

    // Cleanup LiveKit
    try {
      try {
        await state.room?.disconnect();
      } catch (e) {
        debugPrint('Error disconnecting room: $e');
      }

      try {
        await state.room?.dispose();
      } catch (e) {
        debugPrint('Error disposing room: $e');
      }
    } catch (e) {
      debugPrint('Error cleaning up LiveKit: $e');
    }

    // Cleanup Pusher
    _pusher?.disconnect();
    _pusherManager.dispose();
    _streamChannel?.unsubscribe();
  }

  @override
  Future<void> close() async {
    await cleanup();
    return super.close();
  }
}
