import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';

const String appId = "1c3a1707c34d47999c698ab18f220b94";
const String channelName = "test";
const String tempToken =
    "007eJxTYKjcdf1QC8+iswELGc6rPZyxqEhe+qPazxu6TQJ/9rhsk2NRYDBMNk40NDcwTzY2STExt7S0TDaztEhMMrRIMzIySLI0WX6kJ6MhkJGBOceXhZEBAkF8FoaS1OISBgYAWw8e+Q==";

class LiveStreamScreen extends StatefulWidget {
  const LiveStreamScreen({Key? key}) : super(key: key);

  @override
  State<LiveStreamScreen> createState() => _LiveStreamScreenState();
}

class _LiveStreamScreenState extends State<LiveStreamScreen> {
  late final RtcEngine _engine;
  int? _remoteUid;
  bool _localUserJoined = false;

  @override
  void initState() {
    super.initState();
    initAgora();
  }

  Future<void> initAgora() async {
    // Request permissions
    await [Permission.microphone, Permission.camera].request();

    // Create the engine
    _engine = createAgoraRtcEngine();
    await _engine.initialize(const RtcEngineContext(appId: appId));

    // Register event handlers
    _engine.registerEventHandler(RtcEngineEventHandler(
      onJoinChannelSuccess: (connection, elapsed) {
        setState(() => _localUserJoined = true);
        debugPrint("✅ Joined channel: ${connection.channelId}");
      },
      onUserJoined: (connection, remoteUid, elapsed) {
        setState(() => _remoteUid = remoteUid);
        debugPrint("👤 Remote user joined: $remoteUid");
      },
      onUserOffline: (connection, remoteUid, reason) {
        setState(() => _remoteUid = null);
        debugPrint("❌ Remote user left: $remoteUid");
      },
    ));

    // Enable video
    await _engine.enableVideo();
    await _engine.startPreview();

    // Join the channel
    await _engine.joinChannel(
      token: tempToken,
      channelId: channelName,
      uid: 0,
      options: const ChannelMediaOptions(),
    );
  }

  @override
  void dispose() {
    _engine.leaveChannel();
    _engine.release();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Local video
          _localUserJoined
              ? AgoraVideoView(
                  controller: VideoViewController(
                    rtcEngine: _engine,
                    canvas: const VideoCanvas(uid: 0),
                  ),
                )
              : const Center(child: CircularProgressIndicator()),

          // Remote video (small)
          if (_remoteUid != null)
            Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                width: 120,
                height: 160,
                child: AgoraVideoView(
                  controller: VideoViewController.remote(
                    rtcEngine: _engine,
                    canvas: VideoCanvas(uid: _remoteUid),
                    connection: const RtcConnection(channelId: channelName),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
