part of 'clip_preview_cubit.dart';

@freezed
class ClipPreviewState with _$ClipPreviewState {
  const factory ClipPreviewState({
    @Default(false) bool isSaving,
    @Default(false) bool isDownloading,
    @Default('') String errorMessage,
    @Default('') String saveSuccessMessage,
    String? tempVideoPath, // Temporary file path for editing
  }) = _ClipPreviewState;
}
