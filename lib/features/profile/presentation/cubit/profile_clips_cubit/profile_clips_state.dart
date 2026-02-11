part of 'profile_clips_cubit.dart';

@freezed
class ProfileClipsState with _$ProfileClipsState {
  const factory ProfileClipsState({
    @Default(false) bool isLoadingClips,
    @Default('') String errorMessageClips,
    @Default([]) List<ClipModel> clips,
    ClipsPaginationModel? clipsPagination,
    @Default({}) Map<int, Uint8List> clipThumbnails,
    // Clip settings bottom sheet state
    ClipModel? editingClip,
    @Default('') String editingClipName,
    @Default(false) bool editingClipStatus,
    @Default(false) bool isUpdatingClip,
    @Default(false) bool isDeletingClip,
  }) = _ProfileClipsState;
}
