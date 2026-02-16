part of '../../stream.dart';

/// Widget to display a shared VideoPlayerController
class SharedVideoPlayer extends StatefulWidget {
  const SharedVideoPlayer({super.key, 
    required this.controller,
  });

  final VideoPlayerController controller;

  @override
  State<SharedVideoPlayer> createState() => _SharedVideoPlayerState();
}

class _SharedVideoPlayerState extends State<SharedVideoPlayer> {
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
              color: Colors.black.withValues(alpha: 0.3),
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
                  color: Colors.black.withValues(alpha: 0.3),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.9),
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
