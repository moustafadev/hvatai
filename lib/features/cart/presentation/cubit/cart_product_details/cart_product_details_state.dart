part of 'cart_product_details_cubit.dart';

@freezed
class CartProductDetailsState with _$CartProductDetailsState {
  const factory CartProductDetailsState({
    required List<String> categories,
    required int selectedIndex,
    @Default(false) bool isLoading,
    @Default(false) bool success,
    bool? isFavourites,
    @Default(false) bool isCart,
    @Default('') String errorMessage,
    @Default([]) List<ProductModel> products,
    @Default([]) List<ProductModel> ownerProducts,
    @Default([]) List<CartModel> carts,
    @Default({}) Set<int> selectedIndices,
    @Default([]) List<String> searchedItems,
    @Default(0) int selectedCategoryIndex,
    @Default(0) int currentImageIndex,
    PageController? pageController,
    required ProductModel product,
    required CartModel cartResponse,
    @Default(0.0) double totalCartPrice,
    @Default(false) bool isJoiningStream,
  }) = _CartProductDetailsState;
}
