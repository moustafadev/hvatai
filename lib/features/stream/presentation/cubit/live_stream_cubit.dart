import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/stream/data/models/bid_stream_response.dart';
import 'package:hvatai/features/stream/data/models/stream_comment_model.dart';
import 'package:hvatai/features/stream/domain/usecases/add_stream_bids_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/end_stream_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_stream_bids_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_stream_comments_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/leave_stream_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/send_stream_comment_usecase.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';

// import your app types/widgets/colors as needed
// import 'package:super_app/...';
import '../stream.dart'; // where UserRole & Comment are declared

part 'live_stream_state.dart';
part 'live_stream_cubit.freezed.dart';

class LiveStreamCubit extends Cubit<LiveStreamState> {
  LiveStreamCubit(
      this._getComments,
      this._sendComment,
      this._leaveUsecase,
      this._getBids, // ⬅️ add
      this._addBidUsecase,
      this._endUsecase)
      : super(const LiveStreamState(
          role: UserRole.viewer,
          localReady: false,
          isInitializing: false,
          joined: false,
          streamSeconds: 0,
          commentText: '',
          isLoadingComments: false,
          isSendingComment: false,
          commentsPage: 1,
          commentsPerPage: 50,
          commentsHasMore: true,
          errorMessage: '',
          commentsError: '',
          sendCommentError: '',
        ));

  late final RtcEngine _engine;
  RtcEngine get engine => _engine;
  final GetStreamCommentsUsecase _getComments;
  final SendStreamCommentUsecase _sendComment;
  final LeaveStreamUsecase _leaveUsecase;
  final EndStreamUsecase _endUsecase;
  final GetStreamBidsUsecase _getBids;
  final AddStreamBidUsecase _addBidUsecase;
  Timer? _timer;

  TextEditingController controller = TextEditingController();

  Future<void> initialize({
    required String appId,
    required String channelName,
    required String token,
    required int uid,
    required UserRole role,
    required int viewerCount,
    int initialSeconds = 0,
  }) async {
    emit(state.copyWith(
      role: role,
      isInitializing: true,
      streamSeconds: initialSeconds,
      viewerCount: viewerCount,
      errorMessage: '',
    ));

    try {
      // ===== Permissions
      List<Permission> permissions = [];
      if (role == UserRole.broadcaster) {
        permissions = [Permission.camera, Permission.microphone];
      } else {
        permissions = [Permission.microphone]; // optional
      }
      final res = await permissions.request();

      if (role == UserRole.broadcaster) {
        if (res[Permission.camera] != PermissionStatus.granted ||
            res[Permission.microphone] != PermissionStatus.granted) {
          emit(state.copyWith(
            isInitializing: false,
            errorMessage:
                'Camera/Microphone permissions not granted for broadcaster',
          ));
          return;
        }
      }

      // ===== Agora init
      _engine = createAgoraRtcEngine();
      await _engine.initialize(RtcEngineContext(appId: appId));

      await _engine
          .setChannelProfile(ChannelProfileType.channelProfileLiveBroadcasting);

      await _engine.setClientRole(
        role: role == UserRole.broadcaster
            ? ClientRoleType.clientRoleBroadcaster
            : ClientRoleType.clientRoleAudience,
      );

      if (role == UserRole.broadcaster) {
        await _engine.setVideoEncoderConfiguration(
          const VideoEncoderConfiguration(
            dimensions: VideoDimensions(width: 960, height: 540),
            frameRate: 15,
            bitrate: 0,
          ),
        );
      }

      await _engine.enableVideo();
      await _engine.enableAudio();

      if (role == UserRole.broadcaster) {
        await _engine.enableLocalVideo(true);
        await _engine.enableLocalAudio(true);
        await _engine.muteLocalVideoStream(false);
        await _engine.muteLocalAudioStream(false);
        await _engine.startPreview();
      } else {
        await _engine.enableLocalVideo(false);
        await _engine.enableLocalAudio(false);
        await _engine.muteLocalVideoStream(true);
        await _engine.muteLocalAudioStream(true);
      }

      // ===== Handlers
      _engine.registerEventHandler(RtcEngineEventHandler(
        onJoinChannelSuccess: (conn, elapsed) {
          if (kDebugMode) {
            debugPrint(
                '✅ Joined: ${conn.channelId}, localUid=${conn.localUid}, role=$role');
          }
          emit(state.copyWith(localReady: true, joined: true));
          _startTimer(); // start timer after successful join
        },
        onUserJoined: (conn, remoteUid, elapsed) {
          if (kDebugMode) {
            debugPrint('👤 Remote user joined: $remoteUid');
          }
          emit(state.copyWith(remoteUid: remoteUid));
        },
        onUserOffline: (conn, remoteUid, reason) {
          if (kDebugMode) {
            debugPrint('👤 Remote user left: $remoteUid, reason: $reason');
          }
          if (state.remoteUid == remoteUid) {
            emit(state.copyWith(remoteUid: null));
          }
        },
        onRemoteVideoStateChanged: (conn, remoteUid, st, reason, elapsed) {
          if (kDebugMode) {
            debugPrint(
                '📹 Remote video state changed: uid=$remoteUid, state=$st, reason=$reason');
          }
        },
        onRemoteAudioStateChanged: (conn, remoteUid, st, reason, elapsed) {
          if (kDebugMode) {
            debugPrint(
                '🔊 Remote audio state changed: uid=$remoteUid, state=$st, reason=$reason');
          }
        },
        onTokenPrivilegeWillExpire: (conn, token) {
          if (kDebugMode) {
            debugPrint('⏳ Token will expire — renew via renewToken()');
          }
          // TODO: fetch & _engine.renewToken(newToken)
        },
        onRequestToken: (conn) {
          if (kDebugMode) {
            debugPrint('🔄 SDK requested token — fetch & renewToken()');
          }
        },
        onError: (code, msg) {
          if (kDebugMode) {
            debugPrint('❌ Agora error [$code]: $msg');
          }
          emit(state.copyWith(errorMessage: 'Agora error [$code]: $msg'));
        },
      ));

      // ===== Join
      await _engine.joinChannel(
        token: token,
        channelId: channelName,
        uid: uid,
        options: ChannelMediaOptions(
          publishCameraTrack: role == UserRole.broadcaster,
          publishMicrophoneTrack: role == UserRole.broadcaster,
          autoSubscribeAudio: true,
          autoSubscribeVideo: true,
          clientRoleType: role == UserRole.broadcaster
              ? ClientRoleType.clientRoleBroadcaster
              : ClientRoleType.clientRoleAudience,
        ),
      );

      emit(state.copyWith(isInitializing: false));
    } catch (e) {
      emit(state.copyWith(
        isInitializing: false,
        errorMessage: e.toString(),
      ));
    }
  }

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

  /// Optimistic send with RAW model
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
        // rollback temp on error

        emit(state.copyWith(
          isSendingComment: false,
          sendCommentError: err,
        ));
      },
      (created) {
        emit(state.copyWith(
          isSendingComment: false,
        ));
      },
    );
  }

// live_stream_cubit.dart
  void addIncomingComment(StreamCommentModel model) {
    final next = List<StreamCommentModel>.from(state.comments)..add(model);
    emit(state.copyWith(comments: next));
  }

  // ===== Timer & cleanup unchanged =====
  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      emit(state.copyWith(streamSeconds: state.streamSeconds + 1));
    });
  }

  /// Viewer/broadcaster leave (does NOT end the stream for others)
  Future<bool> leaveStream({required int streamId}) async {
    final result = await _leaveUsecase(LeaveStreamParams(streamId: streamId));

    return await result.fold(
      (err) async {
        return false;
      },
      (ok) async {
        // gracefully leave RTC
        return true;
      },
    );
  }

  /// Broadcaster ends the stream for everyone
  Future<bool> endStream({required int streamId}) async {
    final result = await _endUsecase(EndStreamParams(streamId: streamId));

    return await result.fold(
      (err) async {
        return false;
      },
      (ok) async {
        // end on backend then leave RTC
        return true;
      },
    );
  }

  // ===== BIDS =====

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
        final items = pageData.data.data; // BidStreamResponse.data.data
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

  /// Place bid and append returned BidStreamItem.
  Future<void> placeBid({
    required int streamId,
    required int productId,
    required String bidAmount,
  }) async {
    emit(state.copyWith(
      isPlacingBid: true,
      addBidError: '',
    ));

    final res = await _addBidUsecase(AddStreamBidParams(
      streamId: streamId,
      productId: productId,
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
        emit(state.copyWith(
          isPlacingBid: false,
          bids: updated,
        ));
      },
    );
  }

  /// Socket/WS hook: add an incoming bid pushed from server
  void addIncomingBid(BidStreamItem item) {
    final updated = List<BidStreamItem>.from(state.bids)..insert(0, item);
    emit(state.copyWith(bids: updated));
  }

  /// Socket/WS hook: add an incoming bid pushed from server
  void updateViewerCount(int viewerCount) {
    emit(state.copyWith(viewerCount: viewerCount));
  }

  @override
  Future<void> close() async {
    _timer?.cancel();
    try {
      await _engine.leaveChannel();
    } catch (_) {}
    try {
      await _engine.stopPreview();
    } catch (_) {}
    try {
      await _engine.release();
    } catch (_) {}
    return super.close();
  }
}
