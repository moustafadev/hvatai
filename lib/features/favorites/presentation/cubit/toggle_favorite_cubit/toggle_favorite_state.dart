part of 'toggle_favorite_cubit.dart';

@freezed
class ToggleFavoriteState with _$ToggleFavoriteState {
  const factory ToggleFavoriteState({
    @Default({}) Set<int> favoritedIds, // Set of favorited item IDs by type
    @Default({}) Map<String, Set<int>> favoritedByType, // Map of type -> Set of IDs
  }) = _ToggleFavoriteState;
}
