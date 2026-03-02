part of 'toggle_favorite_cubit.dart';

@freezed
class ToggleFavoriteState with _$ToggleFavoriteState {
  const factory ToggleFavoriteState({
    @Default(<int>{}) Set<int> favoritedStreamIds,
    @Default(<int, int>{}) Map<int, int> streamFavoriteCounts,
  }) = _ToggleFavoriteState;
}