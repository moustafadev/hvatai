import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/features/create_clip/domain/usecases/get_preview_images_usecase.dart';
import 'package:hvatai/features/create_clip/presentation/cubit/create_clip_cubit/create_clip_state.dart';
import 'package:hvatai/routes/app_routes.dart';
import 'package:hvatai/routes/go_router.dart';
import 'package:video_player/video_player.dart';

class CreateClipCubit extends Cubit<CreateClipState> {
  final GetPreviewImagesUsecase _getPreviewImagesUsecase;

  CreateClipCubit(this._getPreviewImagesUsecase)
      : super(const CreateClipState());

  VideoPlayerController? _videoController;

  /// Initialize the cubit with video controller and stream ID
  /// This should be called after creating the cubit instance
  void init({
    VideoPlayerController? sharedController,
    int? streamId,
  }) {
    _videoController = sharedController;
    _videoController!.addListener(_videoListener);

    Duration? duration;

    if (_videoController != null && _videoController!.value.isInitialized) {
      duration = _videoController!.value.duration;
    }

    emit(
      state.copyWith(
        streamId: streamId,
        isSharedController: sharedController != null,
        videoDuration: duration,
        endValue: duration?.inMilliseconds.toDouble() ?? 0,
      ),
    );
  }

  VideoPlayerController? get videoController => _videoController;
  Duration? get videoDuration => state.videoDuration;

  Future<void> fetchPreviewImages(int streamId) async {
    emit(state.copyWith(isPreviewLoading: true, errorMessage: ''));

    final result = await _getPreviewImagesUsecase(streamId);

    result.fold(
      (failure) {
        emit(state.copyWith(
          isPreviewLoading: false,
          errorMessage: failure,
        ));
      },
      (response) {
        emit(state.copyWith(
          isPreviewLoading: false,
          previewImages: response,
        ));
      },
    );
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

  void navigateToPreview(String videoUrl) {
    final context = navigatorKey.currentContext;
    if (context != null) {
      context.push(AppRoutes.previewVideo, extra: {
        'videoUrl': videoUrl,
        "startValue": state.startValue,
        "endValue": state.endValue,
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
    return super.close();
  }
}
