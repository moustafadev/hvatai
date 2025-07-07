part of 'auction_search_cubit.dart';

@freezed
class AuctionSearchState with _$AuctionSearchState {
  const factory AuctionSearchState({
    @Default(0) int selectedCategoryIndex,
    @Default([]) List<AuctionProductSearch> products,
  }) = _AuctionSearchState;
}
