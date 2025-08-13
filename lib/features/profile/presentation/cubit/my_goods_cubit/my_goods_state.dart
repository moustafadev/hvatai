part of 'my_goods_cubit.dart';

@freezed
class MyGoodsState with _$MyGoodsState {
  const factory MyGoodsState({
    @Default(0) int selectedCategoryIndex,
    @Default([]) List<File> selectedImages,
    @Default(0) int selectedButtonIndex,
    @Default(false) bool selfDestruction,
    @Default(false) bool bookParticipation,
    required ProductModel product,
    required CategoryModel category,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default([]) List<ProductModel> products,
    @Default(1) int quantity,
  }) = _MyGoodsState;
}
