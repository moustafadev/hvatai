import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';
import 'package:hvatai/core/datasources/local/app_local.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/locator.dart';

/// A reusable widget for displaying video playback functionality.
/// Includes caching for video controllers to improve performance.
class VideoThumbnailPlayer extends StatefulWidget {
  const VideoThumbnailPlayer({
    super.key,
    required this.videoPath,
    this.height,
    this.controller, // optional pre-initialized controller

    this.width,
  });

  final String videoPath;
  final double? height;
  final double? width;
  final VideoPlayerController? controller;

  @override
  State<VideoThumbnailPlayer> createState() => _VideoThumbnailPlayerState();

  // Static method to clear cache when needed (e.g., when leaving the screen)
  static void clearCache() {
    _VideoThumbnailPlayerState.clearCache();
  }
}

class _VideoThumbnailPlayerState extends State<VideoThumbnailPlayer>
    with AutomaticKeepAliveClientMixin {
  // Static cache for controllers - using video URL as key
  static final Map<String, VideoPlayerController> _controllerCache = {};
  static final Map<String, bool> _controllerInitialized = {};

  VideoPlayerController? _controller;
  bool _isInitialized = false;
  bool _isPlaying = false;
  String? _errorMessage;

  @override
  bool get wantKeepAlive => true;

  String? get _videoUrl {
    final path = widget.videoPath.trim();
    // Return null if path is empty or invalid
    if (path.isEmpty) {
      debugPrint('⚠️ Video path is empty');
      return null;
    }

    if (path.startsWith('http://') || path.startsWith('https://')) {
      return path;
    } else {
      return '${ServerConfig.domenStorage}$path';
    }
  }

  double get _height => widget.height ?? 300.h;

  @override
  void initState() {
    super.initState();

    // If controller is provided from outside, use it directly
    if (widget.controller != null) {
      _controller = widget.controller;
      _isInitialized = _controller!.value.isInitialized;
      _isPlaying = _controller!.value.isPlaying;

      // Add listener if not already added
      _controller!.addListener(_controllerListener);
    } else {
      _initializeVideo();
    }
  }

  void _controllerListener() {
    if (!mounted || _controller == null) return;

    final value = _controller!.value;
    setState(() {
      _isPlaying = value.isPlaying;
      _isInitialized = value.isInitialized;
      if (value.hasError) _errorMessage = value.errorDescription;
    });
  }

  Future<void> _initializeVideo() async {
    final videoUrl = _videoUrl;
    if (videoUrl == null || videoUrl.isEmpty) {
      debugPrint('⚠️ Cannot initialize video: URL is null or empty');
      return;
    }

    debugPrint('🎬 Initializing video: $videoUrl');

    // Use cached controller if available
    if (_controllerCache.containsKey(videoUrl)) {
      debugPrint('📦 Using cached controller for: $videoUrl');
      _controller = _controllerCache[videoUrl];
      if (_controllerInitialized[videoUrl] == true &&
          _controller!.value.isInitialized) {
        // Controller is already initialized, just play
        debugPrint('▶️ Playing cached video');
        await _controller!.play();
        if (mounted) {
          setState(() {
            _isInitialized = true;
            _isPlaying = _controller!.value.isPlaying;
          });
        }
        return;
      }
    }

    // No cached controller, create new one
    try {
      debugPrint('🆕 Creating new controller for: $videoUrl');

      // Get authentication token if available
      final appLocal = locator<AppLocal>();
      final token = appLocal.getToken();

      // Create HTTP headers
      final httpHeaders = <String, String>{
        'Accept': '*/*',
        'User-Agent':
            'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
      };

      // Add authorization header if token exists
      if (token != null && token.isNotEmpty && token != 'null') {
        httpHeaders['Authorization'] = 'Bearer $token';
        debugPrint('🔐 Added Authorization header');
      }

      // Create controller with network URL
      _controller = VideoPlayerController.networkUrl(
        Uri.parse(videoUrl),
        videoPlayerOptions: VideoPlayerOptions(
          mixWithOthers: true,
        ),
        httpHeaders: httpHeaders,
      );

      // Add listener for state changes
      _controller!.addListener(() {
        if (!mounted) return;
        final value = _controller!.value;

        setState(() {
          _isPlaying = value.isPlaying;
          if (value.isInitialized) {
            _isInitialized = true;
          }
          if (value.hasError) {
            _errorMessage = value.errorDescription;
          }
        });
      });

      // Initialize the controller
      await _controller!.initialize().then((_) {
        debugPrint('✅ Video initialized successfully');
        if (mounted) {
          setState(() {
            _isInitialized = true;
            _isPlaying = _controller!.value.isPlaying;
          });
        }
        // Auto-play if configured
        if (_controller!.value.isInitialized) {
          _controller!.play();
        }
      }).catchError((error) {
        debugPrint('❌ Error initializing video: $error');
        if (mounted) {
          setState(() {
            _isInitialized = false;
            _errorMessage = error.toString();
          });
        }
        // Remove failed controller from cache
        _controllerCache.remove(videoUrl);
        _controllerInitialized.remove(videoUrl);
      });

      // Cache controller
      _controllerCache[videoUrl] = _controller!;
      _controllerInitialized[videoUrl] = _controller!.value.isInitialized;
    } catch (e, stackTrace) {
      debugPrint('❌ Error creating video controller: $e');
      debugPrint('Stack trace: $stackTrace');
      if (mounted) {
        setState(() {
          _isInitialized = false;
          _errorMessage = e.toString();
        });
      }
      // Remove failed controller from cache
      _controllerCache.remove(videoUrl);
      _controllerInitialized.remove(videoUrl);
    }
  }

  Widget _buildVideoPlayer() {
    // Show error if there's an error message
    if (_errorMessage != null) {
      return Container(
        color: Colors.black,
        height: _height,
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, color: Colors.white, size: 50),
              const SizedBox(height: 16),
              const Text(
                'Failed to load video',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  _errorMessage!,
                  style: const TextStyle(color: Colors.white70, fontSize: 12),
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      );
    }

    if (!_isInitialized || _controller == null) {
      debugPrint(
          '⏳ Building loading indicator - initialized: $_isInitialized, controller: ${_controller != null}');
      // Show loading while video is initializing
      return Container(
        color: Colors.black,
        height: _height,
        width: double.infinity,
        child: const Center(
          child: CircularProgressIndicator(color: Colors.white),
        ),
      );
    }

    return SizedBox(
      height: _height,
      width: double.infinity,
      child: GestureDetector(
        onTap: () {
          debugPrint('👆 Video tapped, current state: $_isPlaying');
          if (_isPlaying) {
            _controller!.pause();
          } else {
            _controller!.play();
          }
        },
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Video Player
            AspectRatio(
              aspectRatio: _controller!.value.aspectRatio,
              child: VideoPlayer(_controller!),
            ),
            // Play/Pause overlay
            if (!_isPlaying)
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
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // Required for AutomaticKeepAliveClientMixin

    debugPrint(
        '🔨 Build called - initialized: $_isInitialized, controller: ${_controller != null}');
    if (_controller != null) {
      debugPrint(
          '📊 Player state - playing: $_isPlaying, duration: ${_controller!.value.duration}');
    }

    // Show video player if initialized, otherwise show loading
    if (_isInitialized &&
        _controller != null &&
        _controller!.value.isInitialized) {
      return _buildVideoPlayer();
    }

    // Show loading indicator while initializing
    return Container(
      color: Colors.black,
      height: _height,
      width: double.infinity,
      child: const Center(
        child: CircularProgressIndicator(color: Colors.white),
      ),
    );
  }

  @override
  void dispose() {
    // Remove listener
    if (_controller != null) {
      _controller!.removeListener(() {});
      // Don't dispose cached controllers, only pause if playing
      if (_isPlaying) {
        _controller!.pause();
      }
      // Note: We don't dispose here to keep it in cache
    }

    // Reset state but keep controller in cache
    _controller = null;
    _isPlaying = false;
    _isInitialized = false;
    _controller?.dispose();

    super.dispose();
  }

  // Static method to clear cache when needed (e.g., when leaving the screen)
  static void clearCache() {
    // Dispose all cached controllers
    for (final controller in _controllerCache.values) {
      controller.removeListener(() {});
      controller.dispose();
    }
    _controllerCache.clear();
    _controllerInitialized.clear();
  }
}
