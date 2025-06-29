
// rates_activity_state.dart
part of 'featured_activity_cubit.dart';
@freezed
class FeaturedActivityState with _$FeaturedActivityState {
  const factory FeaturedActivityState({
    required int selectedCategoryIndex,
    required List<AuctionProduct> products,
    required List<LiveStreamModel> liveStreams,
  }) = _FeaturedActivityState;
}
