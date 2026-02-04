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
            Positioned.fill(
              child: BlocBuilder<EndedStreamCubit, EndedStreamState>(
                builder: (context, state) {
                  return _EndedStreamVideoPlayer(
                    videoPath: recordingPlaylist,
                    isMuted: state.isAudioMuted,
                  );
                },
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
            // Right side icons (clips only, no shop) - positioned like in viewer stream
            Positioned(
              right: 16,
              bottom: 100,
              child: RightIcon(
                icon: Assets.assetsImagesFilm,
                label: 'Клип',
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Клип недоступен для завершенных стримов'),
                      backgroundColor: Colors.red,
                    ),
                  );
                },
              ),
            ),
            // Comments at bottom (without text field)
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

class _EndedStreamCommentsList extends StatelessWidget {
  const _EndedStreamCommentsList({
    required this.comments,
    required this.isLoading,
    required this.hasMore,
    required this.onLoadMore,
  });

  final List<StreamCommentModel> comments;
  final bool isLoading;
  final bool hasMore;
  final VoidCallback onLoadMore;

  @override
  Widget build(BuildContext context) {
    if (comments.isEmpty && !isLoading) {
      return SizedBox.shrink();
    }

    final items = List<StreamCommentModel>.from(comments.reversed);

    return ListView.builder(
      reverse: true,
      padding: EdgeInsets.zero,
      physics: const BouncingScrollPhysics(),
      itemCount: items.length + (hasMore ? 1 : 0),
      itemBuilder: (context, i) {
        final c = items[i];
        return Container(
          margin: const EdgeInsets.only(bottom: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: CustomImage(
                    imageSource: c.user?.image ?? '',
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: c.user?.name ?? "",
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                    CustomText(
                      text: c.message ?? "",
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _EndedStreamVideoPlayer extends StatefulWidget {
  const _EndedStreamVideoPlayer({
    required this.videoPath,
    required this.isMuted,
  });

  final String videoPath;
  final bool isMuted;

  @override
  State<_EndedStreamVideoPlayer> createState() =>
      _EndedStreamVideoPlayerState();
}

class _EndedStreamVideoPlayerState extends State<_EndedStreamVideoPlayer> {
  VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    _initializeVideo();
  }

  @override
  void didUpdateWidget(_EndedStreamVideoPlayer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isMuted != widget.isMuted && _controller != null) {
      _controller!.setVolume(widget.isMuted ? 0.0 : 1.0);
    }
  }

  Future<void> _initializeVideo() async {
    final videoUrl = widget.videoPath.trim().isEmpty
        ? null
        : (widget.videoPath.startsWith('http://') ||
                widget.videoPath.startsWith('https://')
            ? widget.videoPath
            : '${ServerConfig.domenStorage}${widget.videoPath}');

    if (videoUrl == null || videoUrl.isEmpty) {
      return;
    }

    final appLocal = locator<AppLocal>();
    final token = appLocal.getToken();

    final httpHeaders = <String, String>{
      'Accept': '*/*',
      'User-Agent':
          'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
    };

    if (token != null && token.isNotEmpty && token != 'null') {
      httpHeaders['Authorization'] = 'Bearer $token';
    }

    _controller = VideoPlayerController.networkUrl(
      Uri.parse(videoUrl),
      httpHeaders: httpHeaders,
    );

    await _controller!.initialize();
    _controller!.setVolume(widget.isMuted ? 0.0 : 1.0);
    _controller!.play();

    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_controller == null || !_controller!.value.isInitialized) {
      return Container(
        color: Colors.black,
        child: const Center(
          child: CircularProgressIndicator(color: Colors.white),
        ),
      );
    }

    return GestureDetector(
      onTap: () {
        if (_controller!.value.isPlaying) {
          _controller!.pause();
        } else {
          _controller!.play();
        }
        setState(() {});
      },
      child: Stack(
        fit: StackFit.expand,
        children: [
          AspectRatio(
            aspectRatio: _controller!.value.aspectRatio,
            child: VideoPlayer(_controller!),
          ),
          if (!_controller!.value.isPlaying)
            Container(
              color: Colors.black.withOpacity(0.3),
              child: const Center(
                child: Icon(
                  Icons.play_circle_filled,
                  size: 60,
                  color: Colors.white,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _EndedStreamViewerCountWidget extends StatefulWidget {
  const _EndedStreamViewerCountWidget({
    required this.count,
  });

  final int count;

  @override
  State<_EndedStreamViewerCountWidget> createState() =>
      _EndedStreamViewerCountWidgetState();
}

class _EndedStreamViewerCountWidgetState
    extends State<_EndedStreamViewerCountWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(Assets.assetsIconsViewers),
                    SizedBox(width: 8.w),
                    CustomText(
                      text: widget.count.toString(),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    8.pw,
                  ],
                ),
              ),
            ),
            4.pw,
            GestureDetector(
              onTap: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  _isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: Colors.white,
                  size: 26,
                ),
              ),
            ),
          ],
        ),
        if (_isExpanded)
          Container(
            margin: EdgeInsets.only(top: 8.h),
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.8),
              borderRadius: BorderRadius.circular(12),
            ),
            child: BlocBuilder<EndedStreamCubit, EndedStreamState>(
              builder: (context, state) {
                return InkWell(
                  onTap: () {
                    context.read<EndedStreamCubit>().toggleAudio();
                    setState(() {
                      _isExpanded = false;
                    });
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 12.h, horizontal: 8.w),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        state.isAudioMuted
                            ? const Icon(
                                Icons.volume_off,
                                color: Colors.white,
                                size: 20,
                              )
                            : SvgPicture.asset(
                                Assets.assetsIconsVolumeLoud,
                                width: 20,
                                height: 20,
                                colorFilter: const ColorFilter.mode(
                                  Colors.white,
                                  BlendMode.srcIn,
                                ),
                              ),
                        SizedBox(width: 12.w),
                        CustomText(
                          text: 'Звук',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color:
                              state.isAudioMuted ? Colors.grey : Colors.white,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
      ],
    );
  }
}
