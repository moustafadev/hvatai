import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/create_clip/data/models/preview_images/preview_images_model.dart';

part 'create_clip_state.freezed.dart';
@freezed
class CreateClipState with _$CreateClipState {
  const factory CreateClipState({
    @Default(false) bool isLoading,
    @Default(false) bool isTrimming,
    @Default(false) bool isVideoLoaded,
    @Default(false) bool isPlaying,
    @Default(false) bool hasReachedEnd,
    @Default(false) bool isSharedController,
    @Default(false) bool isThumbnailsLoaded,
    @Default(false) bool isPreviewLoading, // new
    Duration? videoDuration,
    @Default('') String errorMessage,
    @Default(0.0) double startValue,
    @Default(0.0) double endValue,
    @Default('') String clipName,
    int? streamId,
    PreviewImagesResponse? previewImages, // new
  }) = _CreateClipState;
}