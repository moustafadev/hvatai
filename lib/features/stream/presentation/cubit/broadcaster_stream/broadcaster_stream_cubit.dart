import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/chat/presentation/pages/chat_service.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';
import 'package:hvatai/features/stream/data/models/bid_stream/bid_stream_response.dart';
import 'package:hvatai/features/stream/data/models/bid_placed/bid_placed_event.dart';
import 'package:hvatai/features/stream/data/models/bid_winner/bid_winner_event.dart';
import 'package:hvatai/features/stream/data/models/stream_comment/stream_comment_model.dart';
import 'package:hvatai/features/stream/data/models/viewer_joined/viewer_joined_event.dart';
import 'package:hvatai/features/stream/domain/usecases/add_stream_bids_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/end_stream_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_stream_bids_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_stream_comments_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/leave_stream_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/send_stream_comment_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/start_stream_usecase.dart';
import 'package:hvatai/features/stream/data/models/toggle_bidding/toggle_bidding_response.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:livekit_client/livekit_client.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pusher_client_socket/pusher_client_socket.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

part 'broadcaster_stream_cubit.freezed.dart';
part 'broadcaster_stream_state.dart';

class BroadcasterStreamCubit extends Cubit<BroadcasterStreamState> {
  BroadcasterStreamCubit(
    this._getComments,
    this._sendComment,
    this._leaveUsecase,
    this._getBids,
    this._addBidUsecase,
    this._endUsecase,
    this._startStreamUsecase, {
    required StreamDataModel stream,
  }) : super(BroadcasterStreamState(stream: stream)) {
    _initialize();
  }

  final GetStreamCommentsUsecase _getComments;
  final SendStreamCommentUsecase _sendComment;
  final LeaveStreamUsecase _leaveUsecase;
  final EndStreamUsecase _endUsecase;
  final GetStreamBidsUsecase _getBids;
  final AddStreamBidUsecase _addBidUsecase;
  final StartStreamUsecase _startStreamUsecase;

  Timer? _timer;
  bool _previewScheduled = false;
  TextEditingController controller = TextEditingController();
  final _pusherManager = PusherManager();
  PusherClient? _pusher;
  Channel? _streamChannel;

  // ================== Initialization ==================
  Future<void> _initialize() async {
    emit(state.copyWith(isInitializing: true));

    // Initialize timer
    _startTimer();

    emit(state.copyWith(
      viewerCount: state.stream.viewerCount ?? 0,
      isInitializing: false,
    ));

    // Load initial comments
    await loadInitialComments(streamId: state.stream.id ?? 0);

    // Initialize Pusher
    await _initPusher();

    // Initialize LiveKit
    await _initLiveKit();
  }

  ({DateTime? endTime, int? remainingSeconds}) _resolveBidTiming(
    StreamProductModel? product,
  ) {
    if (product == null) {
      return (endTime: null, remainingSeconds: null);
    }
    DateTime? endTime = product.bidSession?.sessionEndTime;
    int? remainingSeconds;

    if (endTime != null) {
      remainingSeconds = endTime.difference(DateTime.now()).inSeconds;
    } else if (product.remainingSeconds != null) {
      remainingSeconds = product.remainingSeconds;
      if (remainingSeconds != null && remainingSeconds > 0) {
        endTime = DateTime.now().add(Duration(seconds: remainingSeconds));
      }
    }

    if (remainingSeconds != null && remainingSeconds < 0) {
      remainingSeconds = 0;
    }

    return (endTime: endTime, remainingSeconds: remainingSeconds);
  }

  StreamProductModel _mergeBidSessionIntoProduct(
    StreamProductModel product,
    BidPlacedSessionModel? session,
    BidStreamItem latestBid,
  ) {
    final sessionData = session;
    final hasSessionUpdate = sessionData != null;

    final updatedSession = hasSessionUpdate
        ? product.bidSession?.copyWith(
              id: sessionData.id ?? product.bidSession?.id,
              sessionEndTime: sessionData.sessionEndsAt ??
                  product.bidSession?.sessionEndTime,
              status: sessionData.status ?? product.bidSession?.status,
            ) ??
            ToggleBiddingSessionModel(
              id: sessionData.id,
              sessionEndTime: sessionData.sessionEndsAt,
              status: sessionData.status,
            )
        : product.bidSession;

    return product.copyWith(
      remainingSeconds:
          sessionData?.remainingSeconds ?? product.remainingSeconds,
      bidSession: updatedSession,
      currentBid: latestBid.bidAmount ?? product.currentBid,
      startingPrice: product.startingPrice ?? latestBid.bidAmount,
    );
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

      // _streamChannel!.bind(
      //   'product.added',
      //   (raw) => ,
      // );

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
      final shouldResetWinner =
          state.currentWinner != null && event.bidSession?.status == 'active';
      final nextWinner = shouldResetWinner ? null : state.currentWinner;
      final nextSelecting = shouldResetWinner ? false : state.isSelectingWinner;

      // Update bids list
      final updatedBids = List<BidStreamItem>.from(state.bids)
        ..insert(0, event.bid);
      final updatedStreamProductId =
          state.currentStreamProductId ?? event.bid.streamProductId;
      final updatedCurrentBid = (state.currentStreamProductId == null ||
              state.currentStreamProductId == event.bid.streamProductId)
          ? event.bid
          : state.currentProductStreamBid;

      if (event.streamProduct != null) {
        final product = _mergeBidSessionIntoProduct(
          event.streamProduct!,
          event.bidSession,
          event.bid,
        );

        // Always update timer from the new bid session when a bid is placed
        DateTime? timerEndTime;
        int? timerRemainingSeconds;

        if (event.bidSession != null) {
          final session = event.bidSession!;
          timerEndTime = session.sessionEndsAt;
          timerRemainingSeconds = session.remainingSeconds;

          // Calculate end time if we have remaining seconds but no end time
          if (timerEndTime == null &&
              timerRemainingSeconds != null &&
              timerRemainingSeconds > 0) {
            timerEndTime =
                DateTime.now().add(Duration(seconds: timerRemainingSeconds));
          }

          // Calculate remaining seconds if we have end time but no remaining seconds
          if (timerRemainingSeconds == null && timerEndTime != null) {
            timerRemainingSeconds =
                timerEndTime.difference(DateTime.now()).inSeconds;
            if (timerRemainingSeconds < 0) {
              timerRemainingSeconds = 0;
            }
          }

          if (timerEndTime != null || timerRemainingSeconds != null) {
            debugPrint(
                '⏰ Updating bid session timer (new bid placed) - Remaining: ${timerRemainingSeconds}s, EndTime: $timerEndTime');
          }
        }

        // Resolve timing from product as fallback
        final bidTiming = _resolveBidTiming(product);

        // Use timer values from bid session if available, otherwise use resolved timing
        emit(state.copyWith(
          bids: updatedBids,
          stream: state.stream.copyWith(
            streamProducts: _updateStreamProducts(product),
          ),
          activeStreamProduct: product,
          currentStreamProductId:
              product.id ?? product.productId ?? updatedStreamProductId,
          currentProductStreamBid: updatedCurrentBid,
          currentBidEndTime: timerEndTime ?? bidTiming.endTime,
          currentBidRemainingSeconds:
              timerRemainingSeconds ?? bidTiming.remainingSeconds,
          currentWinner: nextWinner,
          isSelectingWinner: nextSelecting,
        ));
      } else {
        // If no stream product, just update bids
        emit(state.copyWith(
          bids: updatedBids,
          currentStreamProductId: updatedStreamProductId,
          currentProductStreamBid: updatedCurrentBid,
          currentWinner: nextWinner,
          isSelectingWinner: nextSelecting,
        ));
      }
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

  List<StreamProductModel> _updateStreamProducts(StreamProductModel product) {
    final streamProducts = List<StreamProductModel>.from(
      state.stream.streamProducts ?? const [],
    );
    final productId = product.id ?? product.productId;
    if (productId != null) {
      final index = streamProducts.indexWhere((p) => p.id == productId);
      if (index >= 0) {
        streamProducts[index] = product;
      } else {
        streamProducts.insert(0, product);
      }
    }
    return streamProducts;
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

  // ================== LiveKit ==================
  Future<void> _initLiveKit() async {
    // Check permissions
    final statuses = await [Permission.camera, Permission.microphone].request();
    if (statuses[Permission.camera] != PermissionStatus.granted ||
        statuses[Permission.microphone] != PermissionStatus.granted) {
      debugPrint(
        '❌ Camera/Microphone permissions not granted - cannot start stream',
      );
      emit(state.copyWith(
        isConnected: false,
        errorMessage: 'Camera/Microphone permissions not granted',
      ));
      return;
    }
    debugPrint('✅ Permissions granted');

    // Get LiveKit credentials
    final credentials = await startStreamAndGetCredentials(
      streamId: state.stream.id ?? 0,
    );

    if (credentials == null || credentials['token'] == null) {
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
          localParticipant: room.localParticipant,
        ));

        // Start publishing
        await _startPublishing();

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
    emit(state.copyWith(
      localParticipant: state.room?.localParticipant,
    ));
  }

  Future<void> _startPublishing() async {
    if (state.room == null || state.localParticipant == null) {
      debugPrint('⚠️ Room or local participant not ready');
      return;
    }

    // Verify permissions again
    final cameraStatus = await Permission.camera.status;
    final micStatus = await Permission.microphone.status;
    if (cameraStatus != PermissionStatus.granted ||
        micStatus != PermissionStatus.granted) {
      debugPrint('❌ Camera/Microphone permissions not granted');
      emit(state.copyWith(
        isPublishing: false,
        errorMessage: 'Camera/Microphone permissions not granted',
      ));
      return;
    }

    try {
      // Create and publish camera track
      final videoTrack =
          await LocalVideoTrack.createCameraTrack(const CameraCaptureOptions());
      await state.localParticipant!.publishVideoTrack(videoTrack);

      // Create and publish microphone track
      final audioTrack =
          await LocalAudioTrack.create(const AudioCaptureOptions());
      await state.localParticipant!.publishAudioTrack(audioTrack);

      WakelockPlus.enable();

      emit(state.copyWith(
        isPublishing: true,
        videoTrack: videoTrack,
        audioTrack: audioTrack,
      ));

      // Schedule preview capture/send in background after publish starts.
      // _schedulePreviewUpload();

      debugPrint('✅ Started publishing stream');
    } catch (e, st) {
      debugPrint('❌ Failed to start publishing: $e');
      debugPrintStack(stackTrace: st);
      emit(state.copyWith(
        isPublishing: false,
        errorMessage: 'Failed to start publishing: $e',
      ));
    }
  }

  Future<void> pauseStreaming() async {
    if (!state.isPublishing || state.localParticipant == null) return;

    try {
      await state.localParticipant!.setCameraEnabled(false);
      await state.localParticipant!.setMicrophoneEnabled(false);
      debugPrint('✅ Paused streaming');
    } catch (e) {
      debugPrint('❌ Pause streaming error: $e');
    }
  }

  Future<void> resumeStreaming() async {
    if (!state.isPublishing || state.localParticipant == null) return;

    try {
      await state.localParticipant!.setCameraEnabled(true);
      await state.localParticipant!.setMicrophoneEnabled(true);
      debugPrint('✅ Resumed streaming');
    } catch (e) {
      debugPrint('❌ Resume streaming error: $e');
    }
  }

  // ================== Microphone ==================
  Future<void> toggleMicrophone() async {
    if (state.localParticipant == null) return;

    final newMutedState = !state.isMicrophoneMuted;
    emit(state.copyWith(isMicrophoneMuted: newMutedState));

    try {
      await state.localParticipant!.setMicrophoneEnabled(!newMutedState);
      debugPrint('✅ Microphone ${newMutedState ? 'muted' : 'unmuted'}');
    } catch (e) {
      debugPrint('❌ Toggle microphone error: $e');
      // Revert state on error
      emit(state.copyWith(isMicrophoneMuted: !newMutedState));
    }
  }

  // ================== Stream Control ==================
  Future<Map<String, String?>?> startStreamAndGetCredentials({
    required int streamId,
  }) async {
    emit(state.copyWith(isInitializing: true, errorMessage: ''));

    final result = await _startStreamUsecase(streamId);

    return result.fold(
      (error) {
        emit(state.copyWith(
          isInitializing: false,
          errorMessage: 'Failed to start stream: $error',
        ));
        return null;
      },
      (startStreamModel) {
        emit(state.copyWith(isInitializing: false));
        return {
          'token': startStreamModel.token,
          'room': startStreamModel.room ?? startStreamModel.data.channelName,
          'livekitUrl': startStreamModel.livekitUrl,
        };
      },
    );
  }

  // ================== Preview Upload (placeholder) ==================
  void _schedulePreviewUpload() {
    if (_previewScheduled) return;
    _previewScheduled = true;

    // Delay 5 seconds after publishing starts, run in background.
    Future.delayed(const Duration(seconds: 5), () async {
      if (!state.isPublishing || state.videoTrack == null) return;
      await _sendPreviewClip();
    });
  }

  Future<void> _sendPreviewClip() async {
    try {
      if (state.videoTrack == null) {
        debugPrint('📤 Preview skipped: no active video track');
        return;
      }

      final frames = await _capturePreviewFrames(
        track: state.videoTrack!,
        duration: const Duration(seconds: 2),
        fps: 1, // easiest path: 1 frame per second for 5 seconds
      );

      if (frames.isEmpty) {
        debugPrint('📤 Preview capture returned no frames');
        return;
      }

      final totalBytes =
          frames.fold<int>(0, (sum, bytes) => sum + bytes.length);

      debugPrint(
        '📹 Captured 5-second preview clip (frames: ${frames.length}, total bytes: $totalBytes)',
      );

      // TODO: Encode frames to desired format (e.g., MP4/GIF) and upload to backend when endpoint is ready.
    } catch (e, st) {
      debugPrint('❌ Preview send placeholder failed: $e');
      debugPrintStack(stackTrace: st);
    }
  }

  Future<Uint8List?> _captureFrameBytes(LocalVideoTrack track) async {
    try {
      // Directly capture a frame from the underlying media stream track.
      final MediaStreamTrack mediaTrack = track.mediaStreamTrack;
      final frameBuffer = await mediaTrack.captureFrame();
      return frameBuffer.asUint8List();
    } catch (e, st) {
      debugPrint('❌ Failed to capture frame: $e');
      debugPrintStack(stackTrace: st);
      return null;
    }
  }

  Future<List<Uint8List>> _capturePreviewFrames({
    required LocalVideoTrack track,
    required Duration duration,
    required int fps,
  }) async {
    final frames = <Uint8List>[];
    if (fps <= 0) return frames;

    final totalFrames = duration.inSeconds * fps;
    final frameIntervalMs = 1000 ~/ fps;

    for (var i = 0; i < totalFrames; i++) {
      if (!state.isPublishing || state.videoTrack == null) break;
      final bytes = await _captureFrameBytes(track);
      if (bytes != null && bytes.isNotEmpty) {
        frames.add(bytes);
      }
      if (i < totalFrames - 1) {
        await Future.delayed(Duration(milliseconds: frameIntervalMs));
      }
    }

    return frames;
  }

  Future<bool> leaveStream({required int streamId}) async {
    final result = await _leaveUsecase(LeaveStreamParams(streamId: streamId));
    return await result.fold(
      (err) async => false,
      (ok) async => true,
    );
  }

  Future<bool> endStream({required int streamId}) async {
    final result = await _endUsecase(EndStreamParams(streamId: streamId));
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

        int? selectedStreamProductId = state.currentStreamProductId;
        BidStreamItem? selectedBid = state.currentProductStreamBid;

        if (items.isNotEmpty) {
          selectedStreamProductId ??= items.first.streamProductId;
          if (selectedStreamProductId != null) {
            selectedBid = items.firstWhere(
              (bid) => bid.streamProductId == selectedStreamProductId,
              orElse: () => items.first,
            );
          }
        }

        emit(state.copyWith(
          isLoadingBids: false,
          bids: items,
          bidsPage: 1,
          bidsHasMore: hasMore,
          currentStreamProductId: selectedStreamProductId,
          currentProductStreamBid: selectedBid,
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

        BidStreamItem? selectedBid = state.currentProductStreamBid;
        if (state.currentStreamProductId != null && merged.isNotEmpty) {
          final matched = merged.firstWhere(
            (bid) => bid.streamProductId == state.currentStreamProductId,
            orElse: () => selectedBid ?? merged.first,
          );
          selectedBid = matched;
        }

        emit(state.copyWith(
          isLoadingBids: false,
          bids: merged,
          bidsPage: nextPage,
          bidsHasMore: hasMore,
          currentProductStreamBid: selectedBid,
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

        final bool matchesSelection = state.currentStreamProductId == null ||
            state.currentStreamProductId == createdBid.streamProductId;

        emit(state.copyWith(
          isPlacingBid: false,
          bids: updated,
          currentProductStreamBid:
              matchesSelection ? createdBid : state.currentProductStreamBid,
          currentStreamProductId:
              state.currentStreamProductId ?? createdBid.streamProductId,
        ));
      },
    );
  }

  void addIncomingBid(BidStreamItem item) {
    final updated = List<BidStreamItem>.from(state.bids)..insert(0, item);
    emit(state.copyWith(
      bids: updated,
      currentProductStreamBid: state.currentStreamProductId == null ||
              state.currentStreamProductId == item.streamProductId
          ? item
          : state.currentProductStreamBid,
      currentStreamProductId:
          state.currentStreamProductId ?? item.streamProductId,
    ));
  }

  // void setCurrentStreamProduct(int streamProductId) {
  //   BidStreamItem? selectedBid;
  //   for (final bid in state.bids) {
  //     if (bid.streamProductId == streamProductId) {
  //       selectedBid = bid;
  //       break;
  //     }
  //   }
  //   StreamProductModel? selectedProduct;
  //   final streamProducts = state.stream.streamProducts;
  //   if (streamProducts != null) {
  //     for (final product in streamProducts) {
  //       if (product.id == streamProductId) {
  //         selectedProduct = product;
  //         break;
  //       }
  //     }
  //   }
  //   final bidTiming = _resolveBidTiming(selectedProduct);
  //   emit(state.copyWith(
  //     currentStreamProductId: streamProductId,
  //     currentProductStreamBid: selectedBid,
  //     activeStreamProduct: selectedProduct ?? state.activeStreamProduct,
  //     currentBidEndTime: bidTiming.endTime,
  //     currentBidRemainingSeconds: bidTiming.remainingSeconds,
  //   ));
  // }

  void setActiveStreamProduct(StreamProductModel product) {
    final streamProducts = List<StreamProductModel>.from(
      state.stream.streamProducts ?? const [],
    );
    final productId = product.id ?? product.productId;
    if (productId != null) {
      final index = streamProducts.indexWhere((p) => p.id == productId);
      if (index >= 0) {
        streamProducts[index] = product;
      } else {
        streamProducts.insert(0, product);
      }
    }
    BidStreamItem? selectedBid;
    bool hasBidsForProduct = false;
    if (productId != null) {
      for (final bid in state.bids) {
        if (bid.streamProductId == productId) {
          selectedBid = bid;
          hasBidsForProduct = true;
          break;
        }
      }
    }

    // Only start the timer if there are actual bids placed by users for this product
    // Timer will be started when first bid is placed via socket event (_handleBid)
    // When auction is started, there are no bids yet, so timer should not start
    final bidTiming = hasBidsForProduct
        ? _resolveBidTiming(product)
        : (endTime: null, remainingSeconds: null);

    emit(state.copyWith(
      stream: state.stream.copyWith(streamProducts: streamProducts),
      activeStreamProduct: product,
      currentStreamProductId: productId ?? state.currentStreamProductId,
      currentProductStreamBid: selectedBid,
      currentBidEndTime: bidTiming.endTime,
      currentBidRemainingSeconds: bidTiming.remainingSeconds,
      currentWinner: null,
      isSelectingWinner: false,
    ));
  }

  // ================== Viewer Count ==================
  void updateViewerCount(int viewerCount) {
    emit(state.copyWith(viewerCount: viewerCount));
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
    required BroadcasterStreamState currentState,
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

  // ================== Cleanup ==================
  Future<void> cleanup() async {
    _timer?.cancel();
    controller.dispose();

    // Cleanup LiveKit
    try {
      final localParticipant = state.room?.localParticipant;
      localParticipant?.unpublishAllTracks();

      state.videoTrack?.stop();
      state.audioTrack?.stop();

      if (localParticipant != null) {
        try {
          localParticipant.setCameraEnabled(false);
          localParticipant.setMicrophoneEnabled(false);
        } catch (e) {
          debugPrint('Error disabling camera/mic: $e');
        }
      }

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

      WakelockPlus.disable();
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
