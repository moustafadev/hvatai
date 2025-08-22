part of 'product_details_cubit.dart';

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState({
    required List<String> categories,
    required int selectedIndex,
    @Default(false) bool isLoading,
    @Default(false) bool success,
    bool? isFavourites,
    @Default(false) bool isCart,
    @Default('') String errorMessage,
    @Default([]) List<ProductModel> products,
    @Default([]) List<CartModel> carts,
    @Default([]) List<String> selectedInterests,
    @Default({}) Set<int> selectedIndices,
    @Default([]) List<String> searchedItems,
    @Default(0) int selectedCategoryIndex,
    @Default(0) int currentImageIndex,
    PageController? pageController,
    required ProductModel product,
    required CartModel cartResponse,
    @Default(0.0) double totalCartPrice,
  }) = _ProductDetailsState;
}
