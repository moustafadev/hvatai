part of 'my_products_cubit.dart';

@freezed
class MyProductsState with _$MyProductsState {
  const factory MyProductsState({
    @Default([]) List<ProductModel> products,
    @Default('') String searchQuery,
    @Default([]) List<ProductModel> filteredProducts,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default(0) int selectedCategoryIndex,
    @Default(true) bool isShowingMyProducts, // true = Мои товары, false = Избранное
    ProductSortOption? selectedSortOption,
  }) = _MyProductsState;
}