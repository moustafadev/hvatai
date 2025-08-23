part of '../stream.dart';

enum UserRole { broadcaster, viewer }

class LiveStreamScreen extends StatelessWidget {
  final String appId;
  final String channelName;
  final String agoraToken;
  final int agoraUid;
  final UserRole userRole;

  const LiveStreamScreen({
    super.key,
    required this.appId,
    required this.channelName,
    required this.agoraToken,
    required this.agoraUid,
    required this.userRole,
  });

  String _formatTime(int seconds) {
    final mins = seconds ~/ 60;
    final secs = seconds % 60;
    return '${mins.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<LiveStreamCubit>()
        ..initialize(
          appId: appId,
          channelName: channelName,
          token: agoraToken,
          uid: agoraUid,
          role: userRole,
          initialComments: [
            Comment(
                id: 1,
                user: 'nickname25',
                message: 'She is the best 💜💜💜',
                avatar: '👤'),
            Comment(
                id: 2, user: 'nickname25', message: 'Cool 👍', avatar: '👤'),
            Comment(id: 3, user: 'nickname25', message: '😊😊', avatar: 'A'),
            Comment(id: 4, user: 'nickname25', message: '😊😊', avatar: 'A'),
            Comment(id: 5, user: 'nickname25', message: '😊😊', avatar: 'A'),
          ],
          initialSeconds: 24,
        ),
      child: BlocBuilder<LiveStreamCubit, LiveStreamState>(
        builder: (context, state) {
          final cubit = context.read<LiveStreamCubit>();
          return Scaffold(
            backgroundColor: Colors.black,
            body: Stack(
              children: [
                // === Main video ===
                Positioned.fill(
                  child: _buildMainVideo(
                    context: context,
                    state: state,
                    engine: cubit.engine,
                    channelName: channelName,
                  ),
                ),

                // === Top Header ===
                Positioned(
                  top: MediaQuery.of(context).padding.top + 20,
                  left: 16,
                  right: 16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CompanyInfo(),
                      ViewerCountWidget(),
                    ],
                  ),
                ),

                // === Right Side Icons ===
                Positioned(
                  right: 16,
                  top: MediaQuery.of(context).size.height * 0.55,
                  child: const RightSideIcons(),
                ),

                // === Bottom Panel (uses state) ===
                Positioned(
                  left: 16,
                  right: 16,
                  bottom: 16,
                  child: LiveBottomPanel(
                    comments: state.comments,
                    onCommentChanged: (t) =>
                        context.read<LiveStreamCubit>().updateCommentText(t),
                    onSend: () => context.read<LiveStreamCubit>().sendComment(),
                    timerText: _formatTime(state.streamSeconds),
                    // product info (bind your real data)
                    productTitle: 'Винтажные джинсы Levis 501',
                    productCategory: 'Женская винтажная одежда',
                    startPrice: 1100,
                    onEditPressed: () {},
                    onBidPressed: () {},
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // ==== Video builders ====

  Widget _buildMainVideo({
    required BuildContext context,
    required LiveStreamState state,
    required RtcEngine engine,
    required String channelName,
  }) {
    if (state.role == UserRole.viewer) {
      if (state.remoteUid != null) {
        return _buildRemoteVideo(engine, channelName, state.remoteUid!);
      } else {
        return Container(
          color: Colors.black,
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(color: Colors.white),
                SizedBox(height: 16),
                Text(
                  'Waiting for broadcaster...',
                  style: TextStyle(color: Colors.white54, fontSize: 18),
                ),
              ],
            ),
          ),
        );
      }
    }

    // Broadcaster
    return state.localReady
        ? AgoraVideoView(
            controller: VideoViewController(
              rtcEngine: engine,
              canvas: const VideoCanvas(
                uid: 0,
                renderMode: RenderModeType.renderModeHidden,
              ),
              useFlutterTexture: true,
            ),
          )
        : const Center(
            child: CircularProgressIndicator(color: Colors.white),
          );
  }

  Widget _buildRemoteVideo(RtcEngine engine, String channelName, int uid) {
    return AgoraVideoView(
      controller: VideoViewController.remote(
        rtcEngine: engine,
        canvas: VideoCanvas(
          uid: uid,
          renderMode: RenderModeType.renderModeFit,
        ),
        connection: RtcConnection(channelId: channelName),
        useFlutterTexture: true,
      ),
    );
  }
}

class Comment {
  final int id;
  final String user;
  final String message;
  final String avatar;

  Comment({
    required this.id,
    required this.user,
    required this.message,
    required this.avatar,
  });
}
