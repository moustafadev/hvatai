import 'package:freezed_annotation/freezed_annotation.dart';

part 'preview_clip_state.freezed.dart';

@freezed
class PreviewClipState with _$PreviewClipState {
  const factory PreviewClipState({
    @Default(false) bool isInitialized,
    @Default(false) bool isPlaying,
    @Default(false) bool isUploading,
    @Default('') String errorMessage,
    String? videoPath,
    int? streamId,
    String? clipName,
  }) = _PreviewClipState;
}
