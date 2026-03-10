import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/widgets/video_thumbnail_player.dart';
import 'package:hvatai/features/create_clip/presentation/cubit/preview_clip_cubit/preview_clip_state.dart';
import 'package:hvatai/features/create_clip/domain/usecases/upload_clip_usecase.dart';
import 'package:hvatai/routes/app_routes.dart';
import 'package:video_player/video_player.dart';

class PreviewClipCubit extends Cubit<PreviewClipState> {
  PreviewClipCubit(this._uploadClipUsecase) : super(const PreviewClipState());

  final UploadClipUsecase _uploadClipUsecase;
  VideoPlayerController? _controller;

  VideoPlayerController? get controller => _controller;

  /// Initialize the cubit with video path, stream ID, and clip name
  /// This should be called after creating the cubit instance
  void init({
    required String videoUrl,
    required int? streamId,
    required String clipName,
    required double startValue,
    required double endValue,
  }) {
    // Round start and end values to seconds
    final startSec = startValue ~/ 1000; // integer division to get seconds
    final endSec = endValue / 1000;

    emit(state.copyWith(
      videoUrl: videoUrl,
      streamId: streamId,
      clipName: clipName,
      startValue: startSec.toDouble(),
      endValue: endSec.toDouble(),
    ));

    print("=====================");
    print(endSec);
    print("=====================");

    _initializeVideo();
  }

  Future<void> _initializeVideo() async {
    if (state.videoUrl == null || state.videoUrl!.isEmpty) return;

    try {
      _controller = VideoPlayerController.networkUrl(
        Uri.parse(state.videoUrl!),
      );

      await _controller!.initialize();
      _controller!.addListener(_videoListener);

      // Seek to trimmed start
      if ((state.startValue ?? 0) > 0) {
        await _controller!.seekTo(
          Duration(seconds: (state.startValue ?? 0).toInt()),
        );
      }

      emit(state.copyWith(isInitialized: true));
    } catch (e) {
      debugPrint('❌ Error initializing video: $e');
      emit(state.copyWith(errorMessage: 'Error initializing video: $e'));
    }
  }

  void _videoListener() {
    if (isClosed || _controller == null) return;

    final position = _controller!.value.position;

    final endDuration =
        Duration(milliseconds: ((state.endValue ?? 0) * 1000).toInt());

    void videoListener() {
      if (isClosed || _controller == null) return;

      final position = _controller!.value.position;

      final endValue = state.endValue ?? 0;

      // Only apply trim logic if endValue > 0
      if (endValue > 0) {
        final endDuration = Duration(milliseconds: (endValue * 1000).toInt());

        if (position >= endDuration) {
          _controller!.pause();
          _controller!.seekTo(
            Duration(milliseconds: ((state.startValue ?? 0) * 1000).toInt()),
          );
        }
      }

      final isPlayingNow = _controller!.value.isPlaying;
      if (state.isPlaying != isPlayingNow) {
        emit(state.copyWith(isPlaying: isPlayingNow));
      }
    }

    final isPlayingNow = _controller!.value.isPlaying;
    if (state.isPlaying != isPlayingNow) {
      emit(state.copyWith(isPlaying: isPlayingNow));
    }
  }

  Future<void> play() async {
    if (_controller != null && _controller!.value.isInitialized) {
      await _controller!.play();
    }
  }

  Future<void> uploadClip(BuildContext context) async {
    emit(state.copyWith(isUploading: true, errorMessage: ''));

    final result = await _uploadClipUsecase.call(
      UploadClipParams(
          streamId: state.streamId!,
          name: state.clipName!.trim(),
          startValue: state.startValue ?? 0,
          endValue: state.endValue ?? 0),
    );

    result.fold(
      (error) {
        debugPrint('❌ Error uploading clip: $error');
        if (!isClosed) {
          emit(state.copyWith(
            isUploading: false,
            errorMessage: error,
          ));
          showFloatingMessageError('Ошибка загрузки клипа: $error');
        }
      },
      (success) {
        debugPrint('✅ Clip uploaded successfully');
        if (!isClosed) {
          emit(state.copyWith(isUploading: false));
          showFloatingMessageSuccess('Клип успешно загружен');
          context.go(AppRoutes.profile);
        }
      },
    );
  }

  @override
  Future<void> close() {
    _controller?.removeListener(_videoListener);
    _controller?.dispose();
    VideoThumbnailPlayer.clearCache();
    return super.close();
  }
}
