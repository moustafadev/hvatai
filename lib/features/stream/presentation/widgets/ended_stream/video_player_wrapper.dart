part of '../../stream.dart';

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
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.videoPath),
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
