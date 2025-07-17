part of 'my_goods_cubit.dart';

@freezed
class MyGoodsState with _$MyGoodsState {
  const factory MyGoodsState({
    @Default(0) int selectedCategoryIndex,
    @Default([]) List<AuctionProduct> products,
    @Default([]) List<File> selectedImages,
    @Default(0) int selectedButtonIndex,
    @Default(false) bool selfDestruction,
    @Default(false) bool bookParticipation,
    @Default(false) bool pickupFree,
    @Default(1) int quantity,
  }) = _MyGoodsState;
}
