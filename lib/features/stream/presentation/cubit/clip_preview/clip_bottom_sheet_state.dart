part of 'clip_bottom_sheet_cubit.dart';

@freezed
class ClipBottomSheetState with _$ClipBottomSheetState {
  const factory ClipBottomSheetState({
    @Default(false) bool isSaving,
    @Default(false) bool isDownloading,
    @Default('') String errorMessage,
    @Default('') String saveSuccessMessage,
    String? tempVideoPath, // Temporary file path for editing
    @Default('') String videoUrl, // Video URL for downloading
    @Default(false) bool isInitialized, // Whether cubit has been initialized
    @Default(0) int streamId, // Stream ID for uploading clip
  }) = _ClipBottomSheetState;
}
