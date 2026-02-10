import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/create_clip/presentation/cubit/preview_clip_cubit/preview_clip_state.dart';
import 'package:hvatai/features/profile/presentation/profile.dart';
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
    required String videoPath,
    required int? streamId,
    required String clipName,
  }) {
    emit(state.copyWith(
      videoPath: videoPath,
      streamId: streamId,
      clipName: clipName,
    ));
    _initializeVideo();
  }

  Future<void> _initializeVideo() async {
    if (state.videoPath == null || state.videoPath!.isEmpty) {
      return;
    }

    try {
      _controller = VideoPlayerController.file(File(state.videoPath!));
      await _controller!.initialize();
      _controller!.addListener(_videoListener);
      emit(state.copyWith(isInitialized: true));
    } catch (e) {
      debugPrint('❌ Error initializing video: $e');
      emit(state.copyWith(
        errorMessage: 'Error initializing video: $e',
      ));
    }
  }

  void _videoListener() {
    if (isClosed || _controller == null) return;

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

    final result = await _uploadClipUsecase.call(
      UploadClipParams(
        streamId: state.streamId!,
        name: state.clipName!.trim(),
        videoFilePath: state.videoPath!,
      ),
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
    return super.close();
  }
}
