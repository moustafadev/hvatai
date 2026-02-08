part of '../stream.dart';

class EndedStreamScreen extends StatelessWidget {
  const EndedStreamScreen({
    super.key,
    required this.stream,
  });

  final StreamDataModel stream;

  @override
  Widget build(BuildContext context) {
    final streamId = stream.id;
    // If the stream ID is not found, show a message
    if (streamId == null) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: const Center(
          child: CustomText(
            text: 'Stream ID not found',
            color: Colors.white,
          ),
        ),
      );
    }

    final recordingPlaylist = stream.streamSettings?.livekit?.recordingPlaylist;
    // If the recording playlist is not found, show a message
    if (recordingPlaylist == null || recordingPlaylist.isEmpty) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: const Center(
          child: CustomText(
            text: 'Recording not available',
            color: Colors.white,
          ),
        ),
      );
    }

    return BlocProvider<EndedStreamCubit>(
      create: (_) =>
          locator<EndedStreamCubit>()..loadInitialComments(streamId: streamId),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            // Video Player
            _EndedStreamVideoPlayerWrapper(
              videoPath: recordingPlaylist,
              onClipTap: (controller) => _showClipPreviewSheet(
                context: context,
                videoUrl: recordingPlaylist,
                sharedController: controller,
                streamId: streamId,
              ),
            ),
            // Top info
            Positioned(
              top: MediaQuery.of(context).padding.top + 20,
              left: 16,
              right: 16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CompanyInfo(
                    streamUserModel: stream.user,
                    isSubscribed: false,
                    isSubscriptionLoading: false,
                    isViewerMode: true,
                    cubit: null, // No cubit for ended streams
                  ),
                  _EndedStreamViewerCountWidget(
                    count: stream.viewerCount ?? 0,
                  ),
                ],
              ),
            ),
            // Comments at bottom (with read-only text field)
            Positioned(
              left: 16,
              right: 16,
              bottom: 100,
              child: BlocBuilder<EndedStreamCubit, EndedStreamState>(
                builder: (context, state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: 200,
                        child: ShaderMask(
                          shaderCallback: (Rect r) => const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.transparent, Colors.white],
                            stops: [0.0, 0.32],
                          ).createShader(r),
                          blendMode: BlendMode.dstIn,
                          child: _EndedStreamCommentsList(
                            comments: state.comments,
                            isLoading: state.isLoadingComments,
                            hasMore: state.commentsHasMore,
                            onLoadMore: () {
                              context
                                  .read<EndedStreamCubit>()
                                  .loadMoreComments(streamId: streamId);
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Row(
                        children: [
                          Expanded(
                            child: CustomTextField(
                              hintText: 'Сообщение...',
                              fillColor: Colors.transparent,
                              readOnly: true,
                              borderRadius: BorderRadius.circular(24),
                              borderSide: const BorderSide(color: Colors.white),
                              hintColor: Colors.black.withOpacity(0.2),
                              suffixIcon: IconButton(
                                icon: const Icon(
                                  Icons.send,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                onPressed: null,
                                splashRadius: 20,
                              ),
                            ),
                          ),
                          SizedBox(width: 64.w),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _showClipPreviewSheet({
  required BuildContext context,
  required String videoUrl,
  required VideoPlayerController sharedController,
  required int streamId,
}) async {
  await showModalBottomSheet<String>(
    context: context,
    isScrollControlled: true,
    backgroundColor: AppColors.background,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (_) => Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: _ClipPreviewSheet(
        videoUrl: videoUrl,
        sharedController: sharedController,
        streamId: streamId,
      ),
    ),
  );
}
