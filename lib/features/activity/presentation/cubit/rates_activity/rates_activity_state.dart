part of 'rates_activity_cubit.dart';

@freezed
class RatesActivityState with _$RatesActivityState {
  const factory RatesActivityState({
    @Default(0) int selectedCategoryIndex,
    @Default([]) List<AuctionProduct> products,
  }) = _RatesActivityState;
}
