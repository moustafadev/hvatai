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
            _EndedStreamVideoPlayerWrapper(
              videoPath: recordingPlaylist,
              onClipTap: (controller) => _showClipPreviewSheet(
                context: context,
                videoUrl: recordingPlaylist,
                sharedController: controller,
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
            // Note: Clip tap is handled in _EndedStreamVideoPlayerWrapper
            const SizedBox.shrink(),
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

Future<void> _showClipPreviewSheet({
  required BuildContext context,
  required String videoUrl,
  required VideoPlayerController sharedController,
}) async {
  final result = await showModalBottomSheet<String>(
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
      ),
    ),
  );

  // If bottom sheet returned a URL (user clicked edit), navigate to edit screen
  if (result != null && result.isNotEmpty && context.mounted) {
    context.push(
      AppRoutes.editVideo,
      extra: {
        'videoUrl': result,
        'sharedController': sharedController,
      },
    );
  }
}

class _ClipPreviewSheet extends StatelessWidget {
  const _ClipPreviewSheet({
    required this.videoUrl,
    required this.sharedController,
  });

  final String videoUrl;
  final VideoPlayerController sharedController;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ClipPreviewCubit>(
      create: (_) => ClipPreviewCubit(
        videoUrl: videoUrl,
        sharedController: sharedController,
      ),
      child: BlocBuilder<ClipPreviewCubit, ClipPreviewState>(
        builder: (context, state) {
          final cubit = context.read<ClipPreviewCubit>();

          return Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).padding.bottom + 16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox 8 at top
                const SizedBox(height: 8),
                // Container: height 44, width 4, color greyButton, radius 100
                Center(
                  child: Container(
                    height: 4,
                    width: 44,
                    decoration: BoxDecoration(
                      color: AppColors.greyButton,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
                // SizedBox 32
                const SizedBox(height: 32),
                // Video preview with edit icon outside
                Stack(
                  children: [
                    // Video preview
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 64.0),
                      child: AspectRatio(
                        aspectRatio: 9 / 16,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: state.isDownloading
                              ? Container(
                                  color: AppColors.text,
                                  child: const Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CircularProgressIndicator(
                                          color: AppColors.primaryColor,
                                        ),
                                        SizedBox(height: 16),
                                        CustomText(
                                          text: 'Обработка....',
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : _SharedVideoPlayer(
                                  controller: sharedController,
                                ),
                        ),
                      ),
                    ),
                    // Edit icon outside video preview, right side, padding 16 from right screen
                    // Only show when video is downloaded
                    if (state.tempVideoPath != null &&
                        state.tempVideoPath!.isNotEmpty &&
                        !state.isDownloading)
                      Positioned(
                        top: 0,
                        right: 16,
                        child: GestureDetector(
                          onTap: () =>
                              cubit.openEditor(context, sharedController),
                          child: CircleAvatar(
                            backgroundColor: AppColors.greyButton,
                            radius: 16,
                            child: SvgPicture.asset(
                              Assets.assetsIconsEdit,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 16),
                // Container after video: full width (no horizontal padding), height 40, contains SVG lock2 and text
                Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: AppColors.text,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Assets.assetsIconsLock2,
                        width: 20,
                        height: 20,
                      ),
                      const SizedBox(width: 8),
                      CustomText(
                        text: 'Клип сохранён в вашем профиле как приватный',
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                ),
                // SizedBox 21
                const SizedBox(height: 21),
                // Bottom right: circle 48x48 with AppColors.text, contains download icon, padding 16 from right
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: GestureDetector(
                      onTap: (state.isSaving || state.isDownloading)
                          ? null
                          : () {
                              // Only save to downloads (editing file is already downloaded)
                              cubit.saveToDownloads();
                            },
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: AppColors.text,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            Assets.assetsIconsDownload,
                            width: 24,
                            height: 24,
                            colorFilter: const ColorFilter.mode(
                              Colors.white,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

/// Widget to display a shared VideoPlayerController
class _SharedVideoPlayer extends StatefulWidget {
  const _SharedVideoPlayer({
    required this.controller,
  });

  final VideoPlayerController controller;

  @override
  State<_SharedVideoPlayer> createState() => _SharedVideoPlayerState();
}

class _SharedVideoPlayerState extends State<_SharedVideoPlayer> {
  bool _hasReachedEnd = false;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_videoListener);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_videoListener);
    super.dispose();
  }

  void _videoListener() {
    if (!mounted) return;

    if (widget.controller.value.isInitialized) {
      final position = widget.controller.value.position;
      final duration = widget.controller.value.duration;

      // Check if video has reached the end (within 100ms tolerance)
      final hasReachedEnd = duration.inMilliseconds > 0 &&
          (position.inMilliseconds >= duration.inMilliseconds - 100);

      if (_hasReachedEnd != hasReachedEnd) {
        setState(() {
          _hasReachedEnd = hasReachedEnd;
        });
      }
    }
  }

  Future<void> _rewind() async {
    if (widget.controller.value.isInitialized) {
      await widget.controller.seekTo(Duration.zero);
      await widget.controller.play();
      setState(() {
        _hasReachedEnd = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.controller.value.isInitialized) {
      return Container(
        color: Colors.black,
        child: const Center(
          child: CircularProgressIndicator(color: Colors.white),
        ),
      );
    }

    return GestureDetector(
      onTap: _hasReachedEnd
          ? null
          : () {
              if (widget.controller.value.isPlaying) {
                widget.controller.pause();
              } else {
                widget.controller.play();
              }
            },
      child: Stack(
        fit: StackFit.expand,
        children: [
          AspectRatio(
            aspectRatio: widget.controller.value.aspectRatio,
            child: VideoPlayer(widget.controller),
          ),
          if (!widget.controller.value.isPlaying && !_hasReachedEnd)
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
          // Rewatch icon when video reaches end
          if (_hasReachedEnd)
            Positioned.fill(
              child: GestureDetector(
                onTap: _rewind,
                child: Container(
                  color: Colors.black.withOpacity(0.3),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.replay,
                            color: Colors.black,
                            size: 32,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const CustomText(
                          text: 'Пересмотреть',
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
        ],
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
    if (comments.isEmpty) {
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

class _EndedStreamVideoPlayerWrapper extends StatefulWidget {
  const _EndedStreamVideoPlayerWrapper({
    required this.videoPath,
    required this.onClipTap,
  });

  final String videoPath;
  final void Function(VideoPlayerController) onClipTap;

  @override
  State<_EndedStreamVideoPlayerWrapper> createState() =>
      _EndedStreamVideoPlayerWrapperState();
}

class _EndedStreamVideoPlayerWrapperState
    extends State<_EndedStreamVideoPlayerWrapper> {
  VideoPlayerController? _sharedController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Video Player
        Positioned.fill(
          child: BlocBuilder<EndedStreamCubit, EndedStreamState>(
            builder: (context, state) {
              return _EndedStreamVideoPlayer(
                videoPath: widget.videoPath,
                isMuted: state.isAudioMuted,
                onControllerCreated: (controller) {
                  _sharedController = controller;
                },
              );
            },
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
              if (_sharedController != null) {
                widget.onClipTap(_sharedController!);
              }
            },
          ),
        ),
      ],
    );
  }
}

class _EndedStreamVideoPlayer extends StatefulWidget {
  const _EndedStreamVideoPlayer({
    required this.videoPath,
    required this.isMuted,
    this.onControllerCreated,
  });

  final String videoPath;
  final bool isMuted;
  final void Function(VideoPlayerController)? onControllerCreated;

  @override
  State<_EndedStreamVideoPlayer> createState() =>
      _EndedStreamVideoPlayerState();
}

class _EndedStreamVideoPlayerState extends State<_EndedStreamVideoPlayer> {
  VideoPlayerController? _controller;
  bool _hasReachedEnd = false;

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

  void _videoListener() {
    if (!mounted || _controller == null) return;

    if (_controller!.value.isInitialized) {
      final position = _controller!.value.position;
      final duration = _controller!.value.duration;

      // Check if video has reached the end (within 100ms tolerance)
      final hasReachedEnd = duration.inMilliseconds > 0 &&
          (position.inMilliseconds >= duration.inMilliseconds - 100);

      if (_hasReachedEnd != hasReachedEnd) {
        setState(() {
          _hasReachedEnd = hasReachedEnd;
        });
      }
    }
  }

  Future<void> _rewind() async {
    if (_controller != null && _controller!.value.isInitialized) {
      await _controller!.seekTo(Duration.zero);
      await _controller!.play();
      setState(() {
        _hasReachedEnd = false;
      });
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
    _controller!.addListener(_videoListener);
    _controller!.setVolume(widget.isMuted ? 0.0 : 1.0);
    _controller!.play();

    // Notify parent about controller creation
    if (widget.onControllerCreated != null) {
      widget.onControllerCreated!(_controller!);
    }

    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _controller?.removeListener(_videoListener);
    // Don't dispose here - let EditVideoScreen handle it
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
      onTap: _hasReachedEnd
          ? null
          : () {
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
          if (!_controller!.value.isPlaying && !_hasReachedEnd)
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
          // Rewatch icon when video reaches end
          if (_hasReachedEnd)
            Positioned.fill(
              child: GestureDetector(
                onTap: _rewind,
                child: Container(
                  color: Colors.black.withOpacity(0.3),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.replay,
                            color: Colors.black,
                            size: 32,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const CustomText(
                          text: 'Пересмотреть',
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                  ),
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
