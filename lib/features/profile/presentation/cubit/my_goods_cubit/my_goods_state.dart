part of 'my_goods_cubit.dart';

@freezed
class MyGoodsState with _$MyGoodsState {
  const factory MyGoodsState({
    @Default(0) int selectedCategoryIndex,
    @Default([]) List<AuctionProduct> products,
  }) = _MyGoodsState;
}
