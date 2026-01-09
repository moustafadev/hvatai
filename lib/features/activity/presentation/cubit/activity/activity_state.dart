part of 'activity_cubit.dart';

@freezed
class ActivityState with _$ActivityState {
  const factory ActivityState({
    @Default(0) int selectedTabIndex,
    @Default(0) int selectedBidSubTabIndex,
    // Favorites
    @Default([]) List<ProductModel> favorites,
    @Default(false) bool isLoadingFavorites,
    @Default('') String favoritesError,
    // Streams
    @Default([]) List<StreamDataModel> streams,
    @Default(false) bool isLoadingStreams,
    @Default('') String streamsError,
    // Bids
    @Default([]) List<UserBidItem> allBids,
    @Default([]) List<UserBidItem> activeBids,
    @Default([]) List<UserBidItem> historyBids,
    @Default(false) bool isLoadingBids,
    @Default('') String bidsError,
  }) = _ActivityState;
}
