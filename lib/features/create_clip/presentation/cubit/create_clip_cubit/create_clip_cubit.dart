import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/features/create_clip/presentation/cubit/create_clip_cubit/create_clip_state.dart';
import 'package:http/http.dart' as http;
import 'package:hvatai/routes/app_routes.dart';
import 'package:hvatai/routes/go_router.dart';
import 'package:path_provider/path_provider.dart';
import 'package:video_player/video_player.dart';
// import 'package:ffmpeg_kit_flutter_new/ffmpeg_kit.dart';
// import 'package:ffmpeg_kit_flutter_new/return_code.dart';

class CreateClipCubit extends Cubit<CreateClipState> {
  CreateClipCubit() : super(const CreateClipState());

  VideoPlayerController? _videoController;
  File? _videoFile;

  /// Initialize the cubit with video controller and stream ID
  /// This should be called after creating the cubit instance
  void init({
    VideoPlayerController? sharedController,
    int? streamId,
  }) {
    _videoController = sharedController;
    emit(state.copyWith(
      streamId: streamId,
      isSharedController: sharedController != null,
    ));
  }

  VideoPlayerController? get videoController => _videoController;
  File? get videoFile => _videoFile;
  Duration? get videoDuration => state.videoDuration;

  Future<void> downloadVideoFromUrl(String videoUrl,
      {VideoPlayerController? sharedController}) async {
    try {
      emit(state.copyWith(isLoading: true, errorMessage: ''));
      debugPrint('📥 Downloading video from: $videoUrl');

      // Get temporary directory
      final tempDir = await getTemporaryDirectory();
      final fileName = 'video_${DateTime.now().millisecondsSinceEpoch}.mp4';
      final filePath = '${tempDir.path}/$fileName';
      final file = File(filePath);

      debugPrint("Test");
      // Download video
      final response = await http.get(Uri.parse(videoUrl));
      debugPrint("Test true");
      if (response.statusCode == 200) {
        await file.writeAsBytes(response.bodyBytes);
        debugPrint('✅ Video downloaded to: $filePath');
        emit(state.copyWith(
          isLoading: false,
          videoPath: filePath,
        ));
        // Auto-load video after download (use shared controller if provided)
        await loadVideo(filePath, sharedController: sharedController);
      } else {
        debugPrint('❌ Failed to download video: ${response.statusCode}');
        emit(state.copyWith(
          isLoading: false,
          errorMessage: 'Failed to download video: ${response.statusCode}',
        ));
      }
    } catch (e) {
      debugPrint('❌ Error downloading video: $e');
      emit(state.copyWith(
        isLoading: false,
        errorMessage: 'Error downloading video: $e',
      ));
    }
  }

  Future<void> loadVideo(String videoPath,
      {VideoPlayerController? sharedController}) async {
    try {
      debugPrint('📹 Loading video: $videoPath');

      // If shared controller is provided, use it
      if (sharedController != null && sharedController.value.isInitialized) {
        debugPrint('✅ Using shared video controller');
        _videoController = sharedController;
        _videoController!.addListener(_videoListener);

        final videoDuration = _videoController!.value.duration;
        final endValueMs = videoDuration.inMilliseconds.toDouble();

        // For shared controllers, check if videoPath is a file path
        // If it's a file path, use it; otherwise we'll need to download for thumbnails
        try {
          final file = File(videoPath);
          if (await file.exists()) {
            _videoFile = file;
          } else {
            // File doesn't exist, but videoPath might be a URL
            // We'll need the file for thumbnails, but controller is already set
            debugPrint(
                '⚠️ File not found at path, but using shared controller');
          }
        } catch (e) {
          // Not a file path, that's okay - we'll download if needed for thumbnails
          debugPrint('⚠️ Video path is not a file: $videoPath');
        }

        emit(state.copyWith(
          isVideoLoaded: true,
          isLoading: false,
          videoPath: videoPath,
          videoDuration: videoDuration,
          endValue: endValueMs,
          errorMessage: '',
          isPlaying: _videoController!.value.isPlaying,
          isSharedController: true,
          isThumbnailsLoaded: false, // Reset when new video is loaded
        ));
        return;
      }

      _videoFile = File(videoPath);

      // Validate file exists and has content
      if (!await _videoFile!.exists()) {
        throw Exception('Video file does not exist: $videoPath');
      }
      final fileSize = await _videoFile!.length();
      if (fileSize == 0) {
        throw Exception('Video file is empty: $videoPath');
      }
      debugPrint('📊 Video file size: $fileSize bytes');

      // Dispose existing controller first (only if not shared)
      if (!state.isSharedController) {
        _videoController?.removeListener(_videoListener);
        _videoController?.dispose();
        _videoController = null;

        // Small delay to ensure MediaCodec resources are fully released
        await Future.delayed(const Duration(milliseconds: 200));
      }

      _videoController = VideoPlayerController.file(_videoFile!);
      _videoController!.addListener(_videoListener);
      await _videoController!.initialize();

      final videoDuration = _videoController!.value.duration;

      // Initialize endValue to video duration
      final endValueMs = videoDuration.inMilliseconds.toDouble();

      debugPrint('✅ Video loaded: ${videoDuration.inSeconds}s');
      emit(state.copyWith(
        isVideoLoaded: true,
        isLoading: false,
        videoPath: videoPath,
        videoDuration: videoDuration,
        endValue: endValueMs,
        errorMessage: '',
        isPlaying: _videoController!.value.isPlaying,
        isThumbnailsLoaded: false, // Reset when new video is loaded
      ));
    } catch (e) {
      debugPrint('❌ Error loading video: $e');
      emit(state.copyWith(
        isLoading: false,
        errorMessage: 'Error loading video: $e',
      ));
    }
  }

  void _videoListener() {
    // Check if cubit is closed before emitting
    if (isClosed) {
      return;
    }

    if (_videoController != null && _videoController!.value.isInitialized) {
      final isPlayingNow = _videoController!.value.isPlaying;
      final position = _videoController!.value.position;
      final duration = _videoController!.value.duration;

      // Check if video has reached the end (within 100ms tolerance)
      final hasReachedEnd = duration.inMilliseconds > 0 &&
          (position.inMilliseconds >= duration.inMilliseconds - 100);

      if (state.isPlaying != isPlayingNow) {
        emit(state.copyWith(isPlaying: isPlayingNow));
      }

      if (state.hasReachedEnd != hasReachedEnd) {
        emit(state.copyWith(hasReachedEnd: hasReachedEnd));
      }
    }
  }

  Future<void> trimVideo() async {
    if (_videoFile == null) {
      emit(state.copyWith(errorMessage: 'Video not loaded'));
      return;
    }

    final startValue = state.startValue;
    final endValue = state.endValue;

    if (endValue <= startValue) {
      emit(state.copyWith(errorMessage: 'Please select a valid video segment'));
      return;
    }

    // try {
    //   emit(state.copyWith(isTrimming: true, errorMessage: ''));
    //   debugPrint('✂️ Trimming video from ${startValue}ms to ${endValue}ms');

    //   final tempDir = await getTemporaryDirectory();
    //   final outputPath =
    //       '${tempDir.path}/trimmed_${DateTime.now().millisecondsSinceEpoch}.mp4';

    //   // Calculate duration in seconds
    //   final duration = (endValue - startValue) / 1000.0;
    //   final startSeconds = startValue / 1000.0;

    //   // FFmpeg command: -ss start -i input -t duration -c copy output
    //   final command =
    //       '-ss $startSeconds -i "${_videoFile!.path}" -t $duration -c copy "$outputPath"';

    //   debugPrint('📝 FFmpeg command: $command');

    //   final session = await FFmpegKit.execute(command);
    //   final returnCode = await session.getReturnCode();

    //   if (ReturnCode.isSuccess(returnCode)) {
    //     debugPrint('✅ Video trimmed successfully: $outputPath');
    //     emit(state.copyWith(
    //       isTrimming: false,
    //       trimmedVideoPath: outputPath,
    //       errorMessage: '',
    //     ));

    //     // Always navigate to preview screen
    //     _navigateToPreview(outputPath);
    //   } else if (ReturnCode.isCancel(returnCode)) {
    //     debugPrint('❌ Video trimming was cancelled');
    //     emit(state.copyWith(
    //       isTrimming: false,
    //       errorMessage: 'Video trimming was cancelled',
    //     ));
    //   } else {
    //     final failStackTrace = await session.getFailStackTrace();
    //     final output = await session.getOutput();
    //     debugPrint('❌ Failed to trim video: $failStackTrace');
    //     debugPrint('❌ FFmpeg output: $output');
    //     emit(state.copyWith(
    //       isTrimming: false,
    //       errorMessage:
    //           'Failed to trim video: ${output ?? failStackTrace ?? "Unknown error"}',
    //     ));
    //   }
    // } catch (e) {
    //   debugPrint('❌ Error trimming video: $e');
    //   emit(state.copyWith(
    //     isTrimming: false,
    //     errorMessage: 'Error trimming video: $e',
    //   ));
    // }
  }

  void _navigateToPreview(String videoPath) {
    final context = navigatorKey.currentContext;
    if (context != null) {
      context.push(AppRoutes.previewVideo, extra: {
        'videoPath': videoPath,
        'streamId': state.streamId,
        'clipName': state.clipName,
      });
    }
  }

  void updateStartValue(double value) {
    emit(state.copyWith(startValue: value));
  }

  void updateEndValue(double value) {
    emit(state.copyWith(endValue: value));
  }

  void updateClipName(String name) {
    emit(state.copyWith(clipName: name));
  }

  void setThumbnailsLoaded(bool loaded) {
    emit(state.copyWith(isThumbnailsLoaded: loaded));
  }

  Future<void> seekTo(double positionMs) async {
    if (_videoController != null && _videoController!.value.isInitialized) {
      await _videoController!
          .seekTo(Duration(milliseconds: positionMs.toInt()));
      // Reset hasReachedEnd when user seeks
      if (state.hasReachedEnd) {
        emit(state.copyWith(hasReachedEnd: false));
      }
    }
  }

  Future<void> play() async {
    await _videoController?.play();
  }

  Future<void> pause() async {
    await _videoController?.pause();
  }

  Future<void> rewind() async {
    if (_videoController != null && _videoController!.value.isInitialized) {
      await _videoController!.seekTo(Duration.zero);
      await _videoController!.play();
      emit(state.copyWith(hasReachedEnd: false));
    }
  }

  @override
  Future<void> close() {
    // Always remove listener first to prevent emitting after close
    _videoController?.removeListener(_videoListener);

    // Only dispose if not a shared controller
    if (!state.isSharedController) {
      _videoController?.dispose();
    }

    // Note: Temp file cleanup is handled by ClipPreviewCubit when bottom sheet closes
    // We don't delete it here to allow navigation back and forth

    return super.close();
  }
}
