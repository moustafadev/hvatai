import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hvatai/core/theme/app_colors.dart';
import 'package:video_player/video_player.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'dart:typed_data';

/// A reusable widget for displaying video thumbnails with playback functionality.
/// Includes caching for thumbnails and video controllers to improve performance.
class VideoThumbnailPlayer extends StatefulWidget {
  const VideoThumbnailPlayer({
    super.key,
    required this.videoPath,
    this.height,
    this.width,
  });

  final String videoPath;
  final double? height;
  final double? width;

  @override
  State<VideoThumbnailPlayer> createState() => _VideoThumbnailPlayerState();

  // Static method to clear cache when needed (e.g., when leaving the screen)
  static void clearCache() {
    _VideoThumbnailPlayerState.clearCache();
  }
}

class _VideoThumbnailPlayerState extends State<VideoThumbnailPlayer>
    with AutomaticKeepAliveClientMixin {
  // Static cache for thumbnails and controllers
  static final Map<String, Uint8List> _thumbnailCache = {};
  static final Map<String, VideoPlayerController> _controllerCache = {};
  static final Map<String, bool> _controllerInitialized = {};

  VideoPlayerController? _videoPlayerController;
  bool _isInitialized = false;
  bool _isPlaying = false;
  bool _isLoading = false;
  bool _isLoadingThumbnail = true;
  Uint8List? _thumbnailBytes;

  @override
  bool get wantKeepAlive => true;

  String get _videoUrl {
    final path = widget.videoPath;
    if (path.startsWith('http://') || path.startsWith('https://')) {
      return path;
    } else if (path.startsWith('/')) {
      return 'https://khvatai.ru$path';
    } else {
      return 'https://khvatai.ru/$path';
    }
  }

  double get _height => widget.height ?? 300.h;
  double get _width => widget.width ?? double.infinity;

  @override
  void initState() {
    super.initState();
    _initializeFromCache();
    _loadThumbnail();
  }

  void _initializeFromCache() {
    // Check if thumbnail is cached
    final cachedThumbnail = _thumbnailCache[_videoUrl];
    if (cachedThumbnail != null) {
      setState(() {
        _thumbnailBytes = cachedThumbnail;
        _isLoadingThumbnail = false;
      });
    }

    // Check if controller is cached
    if (_controllerCache.containsKey(_videoUrl)) {
      _videoPlayerController = _controllerCache[_videoUrl];
      if (_controllerInitialized[_videoUrl] == true) {
        setState(() {
          _isInitialized = true;
        });
      }
    }
  }

  Future<void> _loadThumbnail() async {
    // Skip if already cached
    if (_thumbnailCache.containsKey(_videoUrl)) {
      return;
    }

    setState(() {
      _isLoadingThumbnail = true;
    });

    try {
      final thumbnail = await VideoThumbnail.thumbnailData(
        video: _videoUrl,
        imageFormat: ImageFormat.JPEG,
        maxWidth: 300,
        quality: 75,
        timeMs: 1000, // Get thumbnail from 1 second into the video
      );
      if (mounted && thumbnail != null) {
        // Cache the thumbnail
        _thumbnailCache[_videoUrl] = thumbnail;
        setState(() {
          _thumbnailBytes = thumbnail;
          _isLoadingThumbnail = false;
        });
        // Pre-initialize video controller after thumbnail loads
        _preInitializeVideo();
      }
    } catch (e) {
      debugPrint('Error generating thumbnail: $e');
      // Thumbnail generation failed, will use fallback
      if (mounted) {
        setState(() {
          _isLoadingThumbnail = false;
        });
      }
    }
  }

  Future<void> _preInitializeVideo() async {
    // Pre-initialize video controller in background
    if (_controllerCache.containsKey(_videoUrl)) {
      return; // Already cached
    }

    try {
      final controller = VideoPlayerController.networkUrl(
        Uri.parse(_videoUrl),
      );

      // Cache controller before initialization
      _controllerCache[_videoUrl] = controller;
      _controllerInitialized[_videoUrl] = false;

      // Initialize in background
      await controller.initialize();

      if (mounted && _controllerCache[_videoUrl] == controller) {
        _controllerInitialized[_videoUrl] = true;
        if (_videoPlayerController == controller) {
          setState(() {
            _isInitialized = true;
          });
        }
      }
    } catch (e) {
      debugPrint('Error pre-initializing video: $e');
      // Remove failed controller from cache
      _controllerCache.remove(_videoUrl);
      _controllerInitialized.remove(_videoUrl);
    }
  }

  Future<void> _initializeVideo() async {
    // Use cached controller if available
    if (_controllerCache.containsKey(_videoUrl)) {
      _videoPlayerController = _controllerCache[_videoUrl];
      if (_controllerInitialized[_videoUrl] == true) {
        // Controller is already initialized, just play
        _videoPlayerController!.play();
        setState(() {
          _isInitialized = true;
          _isPlaying = true;
          _isLoading = false;
        });
        return;
      } else {
        // Controller exists but not initialized yet, wait for it
        setState(() {
          _isLoading = true;
        });
        // Wait a bit for initialization to complete
        await Future.delayed(const Duration(milliseconds: 100));
        if (_controllerInitialized[_videoUrl] == true && mounted) {
          _videoPlayerController!.play();
          setState(() {
            _isInitialized = true;
            _isPlaying = true;
            _isLoading = false;
          });
          return;
        }
      }
    }

    // No cached controller, create new one
    setState(() {
      _isLoading = true;
    });

    try {
      _videoPlayerController = VideoPlayerController.networkUrl(
        Uri.parse(_videoUrl),
      );

      // Cache controller before initialization
      _controllerCache[_videoUrl] = _videoPlayerController!;
      _controllerInitialized[_videoUrl] = false;

      await _videoPlayerController!.initialize();
      _videoPlayerController!.play();

      if (mounted) {
        _controllerInitialized[_videoUrl] = true;
        setState(() {
          _isInitialized = true;
          _isPlaying = true;
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
      // Remove failed controller from cache
      _controllerCache.remove(_videoUrl);
      _controllerInitialized.remove(_videoUrl);
      debugPrint('Error initializing video: $e');
    }
  }

  Widget _buildThumbnail() {
    return GestureDetector(
      onTap: _initializeVideo,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Loading indicator while generating thumbnail
          if (_isLoadingThumbnail)
            Container(
              color: AppColors.gray,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            )
          // Video thumbnail - use generated thumbnail or fallback
          else if (_thumbnailBytes != null)
            Image.memory(
              _thumbnailBytes!,
              fit: BoxFit.cover,
              width: _width,
              height: _height,
              errorBuilder: (context, error, stackTrace) =>
                  _buildThumbnailFallback(),
            )
          else
            _buildThumbnailFallback(),
          // Dark overlay (only show when not loading)
          if (!_isLoadingThumbnail)
            Container(
              color: Colors.black.withOpacity(0.3),
            ),
          // Play icon (only show when not loading)
          if (!_isLoadingThumbnail)
            const Center(
              child: Icon(
                Icons.play_circle_filled,
                size: 60,
                color: Colors.white,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildThumbnailFallback() {
    return Container(
      color: AppColors.gray,
      child: const Center(
        child: Icon(
          Icons.videocam,
          size: 50,
          color: AppColors.grey,
        ),
      ),
    );
  }

  Widget _buildVideoPlayer() {
    if (_isLoading) {
      return Container(
        color: Colors.black,
        child: const Center(
          child: CircularProgressIndicator(color: Colors.white),
        ),
      );
    }

    if (!_isInitialized || _videoPlayerController == null) {
      return _buildThumbnail();
    }

    return GestureDetector(
      onTap: () {
        if (_videoPlayerController!.value.isPlaying) {
          _videoPlayerController!.pause();
        } else {
          _videoPlayerController!.play();
        }
      },
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Video player using VideoPlayer
          SizedBox(
            height: _height,
            child: AspectRatio(
              aspectRatio: _videoPlayerController!.value.aspectRatio,
              child: VideoPlayer(_videoPlayerController!),
            ),
          ),
          // Play/Pause overlay
          if (!_videoPlayerController!.value.isPlaying)
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

  @override
  Widget build(BuildContext context) {
    super.build(context); // Required for AutomaticKeepAliveClientMixin
    if (_isPlaying && _isInitialized) {
      return _buildVideoPlayer();
    }
    return _buildThumbnail();
  }

  @override
  void dispose() {
    // Don't dispose cached controllers, only pause if playing
    if (_isPlaying && _videoPlayerController != null) {
      _videoPlayerController!.pause();
    }
    // Reset state but keep controller in cache
    _videoPlayerController = null;
    _isPlaying = false;
    _isInitialized = false;
    super.dispose();
  }

  // Static method to clear cache when needed (e.g., when leaving the screen)
  static void clearCache() {
    // Dispose all cached controllers
    for (final controller in _controllerCache.values) {
      controller.dispose();
    }
    _controllerCache.clear();
    _controllerInitialized.clear();
    _thumbnailCache.clear();
  }
}
