part of 'my_products_cubit.dart';

@freezed
class MyProductsState with _$MyProductsState {
  const factory MyProductsState({
    @Default([]) List<ProductModel> products,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default(0) int selectedCategoryIndex,
  }) = _MyProductsState;
}