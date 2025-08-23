import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';

// import your app types/widgets/colors as needed
// import 'package:super_app/...';
import '../stream.dart'; // where UserRole & Comment are declared

part 'live_stream_state.dart';
part 'live_stream_cubit.freezed.dart';

class LiveStreamCubit extends Cubit<LiveStreamState> {
  LiveStreamCubit()
      : super(const LiveStreamState(
          role: UserRole.viewer,
          localReady: false,
          isInitializing: false,
          joined: false,
          streamSeconds: 0,
          comments: <Comment>[],
          commentText: '',
          errorMessage: '',
        ));

  late final RtcEngine _engine;
  RtcEngine get engine => _engine;

  Timer? _timer;

  Future<void> initialize({
    required String appId,
    required String channelName,
    required String token,
    required int uid,
    required UserRole role,
    List<Comment> initialComments = const [],
    int initialSeconds = 0,
  }) async {
    emit(state.copyWith(
      role: role,
      isInitializing: true,
      comments: initialComments,
      streamSeconds: initialSeconds,
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

  // ====== Timer / comments logic ======
  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      final next = state.streamSeconds + 1;
      emit(state.copyWith(streamSeconds: next));
    });
  }

  void updateCommentText(String text) {
    emit(state.copyWith(commentText: text));
  }

  void sendComment() {
    final text = state.commentText.trim();
    if (text.isEmpty) return;
    final newList = List<Comment>.from(state.comments)
      ..add(Comment(
        id: state.comments.length + 1,
        user: 'You',
        message: text,
        avatar: 'Y',
      ));
    emit(state.copyWith(comments: newList, commentText: ''));
  }

  // ====== Cleanup ======
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
