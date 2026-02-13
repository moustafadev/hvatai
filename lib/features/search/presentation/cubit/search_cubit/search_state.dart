part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required List<CategoryData> categories,
    @Default('') String query,
    @Default(false) bool isLoading,
    @Default(false) bool hasLoadedInitial,
    @Default('') String errorMessage,
    @Default([]) List<ProductModel> products,
    @Default([]) List<SearchLiveStreamModel> liveStreams,
    @Default(false) bool hasNoResults,
    PageController? pageController,
    @Default([]) List<String> suggestions,
    @Default(false) bool isLoadingSuggestions,
    @Default(false) bool showSuggestions,
    @Default(false) bool isSearchFocused,
    @Default([]) List<RecentSearchItem> recentSearches,
    @Default(false) bool isLoadingRecentSearches,
    int? selectedCategoryId,
  }) = _SearchState;
}
