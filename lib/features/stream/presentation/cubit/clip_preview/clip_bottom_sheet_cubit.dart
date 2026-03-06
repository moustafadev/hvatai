import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/stream/domain/usecases/download_video_usecase.dart';
import 'package:hvatai/routes/app_routes.dart';
import 'package:video_player/video_player.dart';
import 'package:saver_gallery/saver_gallery.dart';

part 'clip_bottom_sheet_cubit.freezed.dart';
part 'clip_bottom_sheet_state.dart';
  
class ClipBottomSheetCubit extends Cubit<ClipBottomSheetState> {
  ClipBottomSheetCubit(this._downloadVideoUsecase)
      : super(const ClipBottomSheetState());

  final DownloadVideoUsecase _downloadVideoUsecase;

  VideoPlayerController? backgroundController;
  VideoPlayerController? sharedController;
  String? _tempVideoPath;

  /// Initialize the cubit with video URL and controller
  /// This should be called after creating the cubit instance
  void init({
    required String videoUrl,
    required int streamId,
    VideoPlayerController? backgroundController,
    VideoPlayerController? sharedController,
  }) {
    this.backgroundController = backgroundController;
    this.sharedController = sharedController;
    emit(state.copyWith(
      videoUrl: videoUrl,
      streamId: streamId,
      isInitialized: true,
    ));
    // Auto-download when cubit is initialized
  }

  Future<void> saveToDownloads() async {
    // Check if initialized
    if (!state.isInitialized || state.videoUrl.isEmpty) {
      return;
    }

    emit(state.copyWith(isSaving: true, errorMessage: ''));

    // First, download to a temporary location
    final tempDir = await getTemporaryDirectory();
    final tempPath = p.join(
      tempDir.path,
      'clip_${DateTime.now().millisecondsSinceEpoch}.mp4',
    );

    final result = await _downloadVideoUsecase.call(
      DownloadVideoParams(
        videoUrl: state.videoUrl,
        targetPath: tempPath,
      ),
    );

    result.fold(
      (error) {
        debugPrint('clip save error: $error');
        showFloatingMessageError('Ошибка сохранения клипа');
        emit(state.copyWith(
          isSaving: false,
          errorMessage: '',
        ));
      },
      (downloadedPath) async {
        try {
          // Use saver_gallery to save video to gallery (works for both Android and iOS)
          final result = await SaverGallery.saveFile(
            filePath: downloadedPath,
            fileName: 'clip_${DateTime.now().millisecondsSinceEpoch}.mp4',
            androidRelativePath: 'Movies',
            skipIfExists: false,
          );

          if (result.isSuccess) {
            showFloatingMessageSuccess('Клип сохранён в галерею');
            emit(state.copyWith(
              isSaving: false,
              saveSuccessMessage: '',
            ));
          } else {
            showFloatingMessageError('Failed to save to gallery');
            throw Exception('Failed to save to gallery');
          }
        } catch (e) {
          debugPrint('clip save to gallery error: $e');
          showFloatingMessageError('Ошибка сохранения клипа в галерею');
          emit(state.copyWith(
            isSaving: false,
            errorMessage: 'Error: $e',
          ));
        }
      },
    );
  }

  void openEditor(
    BuildContext context,
    VideoPlayerController controller,
    int streamId,
  ) {
    // Navigate with shared controller and video path
    // Pass tempVideoPath if available, otherwise pass the original URL
    context.push(
      AppRoutes.editVideo,
      extra: {
        'videoUrl': state.tempVideoPath ?? state.videoUrl,
        'sharedController': controller,
        'streamId': streamId, // Pass stream ID for uploading clip
      },
    );
  }

  @override
  Future<void> close() {
    // Clean up temp file if exists
    if (_tempVideoPath != null) {
      try {
        final file = File(_tempVideoPath!);
        if (file.existsSync()) {
          file.deleteSync();
          debugPrint('🗑️ Deleted temp video file: $_tempVideoPath');
        }
      } catch (e) {
        debugPrint('⚠️ Error deleting temp video file: $e');
      }
    }
    return super.close();
  }
}
