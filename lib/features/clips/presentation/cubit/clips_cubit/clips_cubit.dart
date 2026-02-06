import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/features/clips/presentation/cubit/clips_cubit/clips_state.dart';
import 'package:hvatai/routes/app_routes.dart';
import 'package:hvatai/routes/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:video_player/video_player.dart';
import 'package:ffmpeg_kit_flutter_new/ffmpeg_kit.dart';
import 'package:ffmpeg_kit_flutter_new/return_code.dart';

class ClipsCubit extends Cubit<ClipsState> {
  ClipsCubit() : super(const ClipsState());

  VideoPlayerController? _videoController;
  File? _videoFile;
  Duration? _videoDuration;

  VideoPlayerController? get videoController => _videoController;
  File? get videoFile => _videoFile;
  Duration? get videoDuration => _videoDuration;

  Future<void> downloadVideoFromUrl(String videoUrl) async {
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
        // Auto-load video after download
        await loadVideo(filePath);
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

  Future<void> loadVideo(String videoPath) async {
    try {
      debugPrint('📹 Loading video: $videoPath');

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

      // Dispose existing controller first
      _videoController?.removeListener(_videoListener);
      _videoController?.dispose();
      _videoController = null;

      // Small delay to ensure MediaCodec resources are fully released
      // This prevents conflicts when multiple video players were active
      await Future.delayed(const Duration(milliseconds: 200));

      _videoController = VideoPlayerController.file(_videoFile!);
      _videoController!.addListener(_videoListener);
      await _videoController!.initialize();

      _videoDuration = _videoController!.value.duration;

      // Initialize endValue to video duration
      final endValueMs = _videoDuration!.inMilliseconds.toDouble();

      debugPrint('✅ Video loaded: ${_videoDuration?.inSeconds}s');
      emit(state.copyWith(
        isVideoLoaded: true,
        isLoading: false,
        videoPath: videoPath,
        endValue: endValueMs,
        errorMessage: '',
        isPlaying: _videoController!.value.isPlaying,
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
    if (_videoController != null && _videoController!.value.isInitialized) {
      final isPlayingNow = _videoController!.value.isPlaying;
      if (state.isPlaying != isPlayingNow) {
        emit(state.copyWith(isPlaying: isPlayingNow));
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

    try {
      emit(state.copyWith(isTrimming: true, errorMessage: ''));
      debugPrint('✂️ Trimming video from ${startValue}ms to ${endValue}ms');

      final tempDir = await getTemporaryDirectory();
      final outputPath =
          '${tempDir.path}/trimmed_${DateTime.now().millisecondsSinceEpoch}.mp4';

      // Calculate duration in seconds
      final duration = (endValue - startValue) / 1000.0;
      final startSeconds = startValue / 1000.0;

      // FFmpeg command: -ss start -i input -t duration -c copy output
      final command =
          '-ss $startSeconds -i "${_videoFile!.path}" -t $duration -c copy "$outputPath"';

      debugPrint('📝 FFmpeg command: $command');

      final session = await FFmpegKit.execute(command);
      final returnCode = await session.getReturnCode();

      if (ReturnCode.isSuccess(returnCode)) {
        debugPrint('✅ Video trimmed successfully: $outputPath');
        debugPrint('ℹ️ Video is saved temporarily at: $outputPath');
        debugPrint(
            'ℹ️ You can upload this file to your backend and then delete it');
        emit(state.copyWith(
          isTrimming: false,
          trimmedVideoPath: outputPath,
          errorMessage: '',
        ));
        // Navigate to preview screen
        _navigateToPreview(outputPath);
      } else if (ReturnCode.isCancel(returnCode)) {
        debugPrint('❌ Video trimming was cancelled');
        emit(state.copyWith(
          isTrimming: false,
          errorMessage: 'Video trimming was cancelled',
        ));
      } else {
        final failStackTrace = await session.getFailStackTrace();
        final output = await session.getOutput();
        debugPrint('❌ Failed to trim video: $failStackTrace');
        debugPrint('❌ FFmpeg output: $output');
        emit(state.copyWith(
          isTrimming: false,
          errorMessage:
              'Failed to trim video: ${output ?? failStackTrace ?? "Unknown error"}',
        ));
      }
    } catch (e) {
      debugPrint('❌ Error trimming video: $e');
      emit(state.copyWith(
        isTrimming: false,
        errorMessage: 'Error trimming video: $e',
      ));
    }
  }

  void _navigateToPreview(String videoPath) {
    final context = navigatorKey.currentContext;
    if (context != null) {
      context.push(AppRoutes.previewVideo, extra: {
        'videoPath': videoPath,
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

  Future<void> seekTo(double positionMs) async {
    if (_videoController != null && _videoController!.value.isInitialized) {
      await _videoController!
          .seekTo(Duration(milliseconds: positionMs.toInt()));
    }
  }

  Future<void> play() async {
    await _videoController?.play();
  }

  Future<void> pause() async {
    await _videoController?.pause();
  }

  void dispose() {
    _videoController?.removeListener(_videoListener);
    _videoController?.dispose();
    _videoController = null;
  }
}
