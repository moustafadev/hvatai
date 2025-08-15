part of 'my_goods_cubit.dart';

@freezed
class MyGoodsState with _$MyGoodsState {
  const factory MyGoodsState({
    @Default(0) int selectedCategoryIndex,
    @Default([]) List<File> selectedImages,
    @Default(false) bool selfDestruction,
    required ProductModel product,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default(0) int currentImageIndex,
    @Default([]) List<ProductModel> products,
    @Default([]) List<MainCategoryModel> category,
  }) = _MyGoodsState;
}
