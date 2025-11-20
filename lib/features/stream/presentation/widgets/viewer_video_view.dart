part of '../stream.dart';

class ViewerVideoView extends StatelessWidget {
  const ViewerVideoView({
    super.key,
    required this.state,
  });

  final ViewerStreamState state;

  @override
  Widget build(BuildContext context) {
    if (!state.isConnected || state.remoteVideoTrack == null) {
      return const ViewerWaitingBox(text: 'Connecting to stream...');
    }

    return VideoTrackRenderer(
      renderMode: VideoRenderMode.auto,
      state.remoteVideoTrack!,
      fit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
    );
  }
}

