part of 'activity_cubit.dart';

@freezed
class ActivityState with _$ActivityState {
  const factory ActivityState({
    @Default(0) int selectedTabIndex,
    @Default(0) int selectedCategoryIndex,
    @Default([]) List<AuctionProduct> products,
  }) = _ActivityState;
}
