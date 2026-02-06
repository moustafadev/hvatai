part of 'clip_preview_cubit.dart';

@freezed
class ClipPreviewState with _$ClipPreviewState {
  const factory ClipPreviewState({
    @Default(false) bool isSaving,
    @Default('') String errorMessage,
    @Default('') String saveSuccessMessage,
  }) = _ClipPreviewState;
}
