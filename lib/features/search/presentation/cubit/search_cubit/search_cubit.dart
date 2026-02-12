import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/cart/data/model/cart_model.dart' as cart;
import 'package:hvatai/features/cart/data/model/cart_model.dart';
import 'package:hvatai/features/cart/presentation/event_bus/event_bus.dart';
import 'package:hvatai/features/cart/presentation/event_bus/events.dart';
import 'package:hvatai/features/auth/data/models/category_model/category_model.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/search/data/model/recent_search_response.dart';
import 'package:hvatai/features/search/data/model/search_live_stream_model.dart';
import 'package:hvatai/features/search/data/model/search_response/search_response_model.dart';
import 'package:hvatai/features/search/domain/usecases/get_recent_searches_usecase.dart';
import 'package:hvatai/features/search/domain/usecases/search_usecase.dart';
import 'package:hvatai/features/search/domain/usecases/search_suggestions_usecase.dart';
import 'package:hvatai/features/search/domain/usecases/delete_recent_search_usecase.dart';

part 'search_cubit.freezed.dart';
part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(
    this._searchUsecase,
    this._searchSuggestionsUsecase,
    this._getRecentSearchesUsecase,
    this._deleteRecentSearchUsecase,
  ) : super(SearchState(
          categories: const [],
          selectedIndex: 0,
        )) {
    EventBus().subscribe<ProductAddedEvent>((event) {
      _handleProductAdded(event);
    });
    EventBus().subscribe<FavoriteUpdatedEvent>((event) {
      _handleFavoriteUpdated(event);
    });
  }

  static const _defaultQuery = '';

  void _handleFavoriteUpdated(FavoriteUpdatedEvent event) {
    final updatedProducts = state.products.map((product) {
      if (product.id == event.productId) {
        return product.copyWith(
          isFavorited: event.isFavorite,
          favoritesCount: event.favoritesCount,
        );
      }
      return product;
    }).toList();

    emit(state.copyWith(products: updatedProducts));
  }

  void _handleProductAdded(ProductAddedEvent event) {
    if (!state.products.any((product) => product.id == event.product.id)) {
      final updatedProducts = [event.product, ...state.products];
      emit(state.copyWith(products: updatedProducts));
    }
  }

  final SearchUsecase _searchUsecase;
  final SearchSuggestionsUsecase _searchSuggestionsUsecase;
  final GetRecentSearchesUsecase _getRecentSearchesUsecase;
  final DeleteRecentSearchUsecase _deleteRecentSearchUsecase;
  Timer? _debounce;
  Timer? _suggestionsDebounce;

  @override
  Future<void> close() {
    EventBus().unsubscribe<FavoriteUpdatedEvent>(_handleFavoriteUpdated);

    EventBus().unsubscribe<ProductAddedEvent>(_handleProductAdded);
    _debounce?.cancel();
    _suggestionsDebounce?.cancel();
    return super.close();
  }

  void removeItem(String item) {
    final updatedList = List<String>.from(state.searchedItems)..remove(item);
    emit(state.copyWith(searchedItems: updatedList));
  }

  void initialize() {
    search(_defaultQuery);
    loadRecentSearches();
  }

  Future<void> loadRecentSearches() async {
    emit(state.copyWith(isLoadingRecentSearches: true));
    final result = await _getRecentSearchesUsecase(unit);
    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoadingRecentSearches: false,
          recentSearches: [],
        ),
      ),
      (response) {
        // Take max 5 recent searches
        final items = response.data.take(5).toList();
        emit(
          state.copyWith(
            isLoadingRecentSearches: false,
            recentSearches: items,
          ),
        );
      },
    );
  }

  Future<void> removeRecentSearch(RecentSearchItem item) async {
    // Optimistically update UI
    final updated = List<RecentSearchItem>.from(state.recentSearches)
      ..removeWhere((search) => search.id == item.id);
    emit(state.copyWith(recentSearches: updated));

    // Call API to delete from server
    final result = await _deleteRecentSearchUsecase(item.id);
    result.fold(
      (failure) {
        // Revert on failure - reload recent searches
        loadRecentSearches();
      },
      (_) {
        // Success - state already updated
      },
    );
  }

  void onQueryChanged(String query) {
    emit(state.copyWith(
      query: query,
      showSuggestions: state.isSearchFocused && query.isNotEmpty,
    ));

    final trimmed = query.trim();

    // If query is cleared, search with empty string (same as initial load)
    if (trimmed.isEmpty) {
      _debounce?.cancel();
      _debounce = Timer(const Duration(milliseconds: 300), () {
        search('');
      });
    }

    // Fetch suggestions with shorter debounce
    _suggestionsDebounce?.cancel();
    _suggestionsDebounce = Timer(const Duration(milliseconds: 200), () {
      if (state.isSearchFocused && trimmed.isNotEmpty) {
        fetchSuggestions(trimmed);
      } else {
        emit(state.copyWith(
          suggestions: [],
          showSuggestions: false,
        ));
      }
    });
  }

  void onSearchSubmitted(String query) {
    final trimmed = query.trim();
    emit(state.copyWith(
      showSuggestions: false,
      isSearchFocused: false,
    ));
    // Call search with empty string if query is cleared
    search(trimmed.isEmpty ? '' : trimmed);
  }

  void onSearchFieldFocused() {
    emit(state.copyWith(
      isSearchFocused: true,
      showSuggestions: state.query.isNotEmpty && state.suggestions.isNotEmpty,
    ));
    // Fetch suggestions if query exists
    if (state.query.trim().isNotEmpty) {
      fetchSuggestions(state.query.trim());
    }
  }

  Future<void> fetchSuggestions(String query) async {
    if (query.isEmpty) {
      emit(state.copyWith(
        suggestions: [],
        showSuggestions: false,
        isLoadingSuggestions: false,
      ));
      return;
    }

    emit(state.copyWith(isLoadingSuggestions: true));

    final result = await _searchSuggestionsUsecase(
      SearchSuggestionsParams(query: query),
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoadingSuggestions: false,
          suggestions: [],
        ),
      ),
      (response) {
        emit(
          state.copyWith(
            isLoadingSuggestions: false,
            suggestions: response.data.suggestions,
            showSuggestions: response.data.suggestions.isNotEmpty,
          ),
        );
      },
    );
  }

  void selectSuggestion(String suggestion) {
    emit(state.copyWith(
      query: suggestion,
      showSuggestions: false,
    ));
    search(suggestion);
  }

  void hideSuggestions() {
    emit(state.copyWith(
      showSuggestions: false,
      isSearchFocused: false,
    ));
  }

  void onScroll() {
    if (state.showSuggestions) {
      emit(state.copyWith(showSuggestions: false));
    }
  }

  Future<void> search(String query) async {
    emit(
      state.copyWith(
        isLoading: true,
        errorMessage: '',
        query: query,
      ),
    );
    // Include selected category ID if one is selected
    final categoryIds = state.selectedCategoryId != null
        ? [state.selectedCategoryId!]
        : <int>[];
    final result = await _searchUsecase(
      SearchParams(query: query, categoryIds: categoryIds),
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          errorMessage: failure,
          hasLoadedInitial: true,
        ),
      ),
      (response) {
        final data = response.data;
        final parentCategories = data?.parentCategories ?? [];
        final childCategories = data?.childCategories ?? [];
        final products =
            _mapProducts(data?.products?.data ?? const <SearchProductDto>[]);
        final streams = _mapStreams(data?.streams ?? const <SearchStreamDto>[]);
        final users = _mapUsers(data?.users ?? const <SearchUserDto>[]);
        final categories = _buildCategories(parentCategories);

        emit(
          state.copyWith(
            isLoading: false,
            products: products,
            liveStreams: streams,
            users: users,
            parentCategories: parentCategories,
            childCategories: childCategories,
            categories: categories,
            hasNoResults: data?.hasNoResults ?? false,
            hasLoadedInitial: true,
            errorMessage: '',
          ),
        );
      },
    );
  }

  void toggleInterest(int index, String interestKey) {
    final isSelected = state.selectedIndices.contains(index);
    final updatedIndices = Set<int>.from(state.selectedIndices);
    final updatedInterests = List<String>.from(state.selectedInterests);

    if (isSelected) {
      updatedIndices.remove(index);
      updatedInterests.remove(interestKey);
    } else {
      updatedIndices.add(index);
      updatedInterests.add(interestKey);
    }

    emit(state.copyWith(
      selectedIndices: updatedIndices,
      selectedInterests: updatedInterests,
    ));
  }

  void selectCategory(dynamic index) {
    if (state.categories.isEmpty) return;
    final safeIndex = (index is int) ? index : 0;
    emit(state.copyWith(
        selectedIndex: safeIndex.clamp(0, state.categories.length - 1)));
  }

  void selectCategoryById(CategoryData category) {
    if (category.id == null) return;
    emit(state.copyWith(
      selectedCategoryId: category.id,
      selectedCategoryName: category.name,
    ));
    // Trigger search with selected category
    search(state.query);
  }

  void clearSelectedCategory() {
    emit(state.copyWith(
      selectedCategoryId: null,
      selectedCategoryName: null,
    ));
    // Trigger search without category filter
    search(state.query);
  }

  String? get selectedCategory {
    if (state.categories.isEmpty) return null;
    final safeIndex = state.selectedIndex.clamp(0, state.categories.length - 1);
    final category = state.categories[safeIndex];
    return category == 'All' ? null : category;
  }

  List<String> _buildCategories(List<CategoryData> categories) {
    final names = categories
        .map((category) => category.name ?? '')
        .where((name) => name.isNotEmpty)
        .toList();
    return names;
  }

  List<ProductModel> _mapProducts(List<SearchProductDto> products) {
    return products.map((product) {
      final variants = product.variants
              ?.map(
                (variant) => VariantModel(
                  id: variant.id,
                  price: variant.price,
                  stock: variant.stock ?? 0,
                  discount: variant.discount,
                  discountType: variant.discountType,
                ),
              )
              .toList() ??
          [VariantModel(price: product.price)];

      return ProductModel(
        id: product.id,
        productName: product.name,
        productDescription: product.description,
        category: product.category == null
            ? null
            : MainCategoryModel(
                id: product.category?.id,
                name: product.category?.name,
              ),
        user: product.user == null
            ? null
            : UserModel(
                id: product.user?.id,
                name: product.user?.name,
                email: product.user?.email,
                image: product.user?.image,
                description: product.user?.description,
              ),
        variants: variants,
        images: product.images ?? [],
        deliveryAvailable: product.delivery?.available,
        isFavorited: product.isFavorited ?? false,
        favoritesCount: product.favoritesCount ?? 0,
        ratingsCount: product.ratingsCount ?? 0,
        averageRating: product.rating,
      );
    }).toList();
  }

  List<SearchLiveStreamModel> _mapStreams(List<SearchStreamDto> streams) {
    return streams.map((stream) {
      final firstCategory =
          (stream.categories != null && stream.categories!.isNotEmpty)
              ? stream.categories!.first.name ?? ''
              : '';
      return SearchLiveStreamModel(
        channelId: stream.id?.toString() ?? '',
        adminName: stream.user?.name ?? '',
        adminPhoto: stream.user?.image ?? '',
        price: '',
        latestThumbnailUrl: stream.latestThumbnailUrl ?? '',
        latestGifUrl: stream.latestGifUrl ?? '',
        viewsCount: stream.viewerCount ?? 0,
        title: stream.title ?? '',
        description: stream.description ?? '',
        liveImage: stream.thumbnail ?? '',
        selectedProductImage: stream.thumbnail ?? '',
        category: firstCategory,
        isBlocked: stream.status == 'blocked',
        adminId: stream.user?.id?.toString() ?? '',
        unblockRequested: false,
        unblockRequestReason: '',
      );
    }).toList();
  }

  List<UserRegistrationData> _mapUsers(List<SearchUserDto> users) {
    return users
        .map(
          (user) => UserRegistrationData(
            id: user.id,
            firstName: user.name,
            email: user.email,
            image: user.image,
            description: user.description,
            personalRating: user.personalRating,
            personalRatingCount: user.personalRatingCount,
            favoritesCount: user.favoritesCount,
          ),
        )
        .toList();
  }
}
