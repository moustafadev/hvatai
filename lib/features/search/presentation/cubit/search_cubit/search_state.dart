part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required List<String> categories,
    required int selectedIndex,
    @Default('') String query,
    @Default(false) bool isLoading,
    @Default(false) bool hasLoadedInitial,
    @Default(false) bool isFavourites,
    @Default(false) bool isCart,
    @Default('') String errorMessage,
    @Default([]) List<ProductModel> products,
    @Default([]) List<SearchLiveStreamModel> liveStreams,
    @Default([]) List<UserRegistrationData> users,
    @Default([]) List<CategoryData> parentCategories,
    @Default([]) List<CategoryData> childCategories,
    @Default(false) bool hasNoResults,
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
  }) = _SearchState;
}
