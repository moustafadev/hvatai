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
    @Default([]) List<String> selectedInterests,
    @Default({}) Set<int> selectedIndices,
    @Default([]) List<String> searchedItems,
    @Default(0) int selectedCategoryIndex,
    @Default(0) int currentImageIndex,
    PageController? pageController,
    @Default([]) List<String> suggestions,
    @Default(false) bool isLoadingSuggestions,
    @Default(false) bool showSuggestions,
    @Default(false) bool isSearchFocused,
    @Default([]) List<RecentSearchItem> recentSearches,
    @Default(false) bool isLoadingRecentSearches,
    int? selectedCategoryId,
    String? selectedCategoryName,
  }) = _SearchState;
}
