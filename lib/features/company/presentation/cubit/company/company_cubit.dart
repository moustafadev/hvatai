import 'dart:typed_data';
import 'package:dartz/dartz.dart' show unit;
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hvatai/features/company/domain/usecases/get_user_data_usecase.dart';
import 'package:hvatai/features/company/domain/usecases/get_company_products_usecase.dart';
import 'package:hvatai/features/company/domain/usecases/get_company_streams_usecase.dart';
import 'package:hvatai/features/create_clip/domain/usecases/get_user_clips_usecase.dart';
import 'package:hvatai/features/create_clip/data/models/clip_model/clip_model.dart';
import 'package:hvatai/features/profile/domain/usecases/get_user_ratings_usecase.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/search/data/model/user_data_model.dart';
import 'package:hvatai/features/stream/domain/usecases/get_subscribed_users_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/toggle_subscription_usecase.dart';
import 'package:hvatai/features/favorites/domain/usecases/toggle_favorite_usecase.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:hvatai/features/company/presentation/company.dart';

import 'company_state.dart';

class CompanyCubit extends Cubit<CompanyState> {
  CompanyCubit(
    this._getUserDataUsecase,
    this._getSubscribedUsersUsecase,
    this._toggleSubscriptionUsecase,
    this._getCompanyProductsUsecase,
    this._getUserRatingsUsecase,
    this._getCompanyStreamsUsecase,
    this._getUserClipsUsecase,
    this._toggleFavoriteUsecase,
  ) : super(const CompanyState());

  final GetUserDataUsecase _getUserDataUsecase;
  final GetSubscribedUsersUsecase _getSubscribedUsersUsecase;
  final ToggleSubscriptionUsecase _toggleSubscriptionUsecase;
  final GetCompanyProductsUsecase _getCompanyProductsUsecase;
  final GetUserRatingsUsecase _getUserRatingsUsecase;
  final GetCompanyStreamsUsecase _getCompanyStreamsUsecase;
  final GetUserClipsUsecase _getUserClipsUsecase;
  final ToggleFavoriteUsecase _toggleFavoriteUsecase;

  Future<void> loadCompanyProfile(int userId) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final result = await _getUserDataUsecase(GetUserDataParams(userId: userId));

    await result.fold(
      (failure) async {
        emit(
          state.copyWith(
            isLoading: false,
            errorMessage: failure,
          ),
        );
      },
      (user) async {
        final isSubscribed = await _fetchSubscriptionStatus(userId);
        emit(
          state.copyWith(
            isLoading: false,
            user: user,
            isSubscribed: isSubscribed,
          ),
        );
      },
    );
  }

  void setInitialData({
    required UserDataModel user,
    required bool isSubscribed,
  }) {
    emit(
      CompanyState(
        user: user,
        isSubscribed: isSubscribed,
      ),
    );
  }

  Future<bool> _fetchSubscriptionStatus(int userId) async {
    final result = await _getSubscribedUsersUsecase(unit);
    return result.fold(
      (_) => state.isSubscribed,
      (response) => response.data.any((subscriber) => subscriber.id == userId),
    );
  }

  Future<void> toggleSubscription(int userId) async {
    if (state.isToggleLoading || userId == 0) return;

    emit(state.copyWith(isToggleLoading: true));

    final result = await _toggleSubscriptionUsecase(
      ToggleSubscriptionParams(userId: userId),
    );

    result.fold(
      (_) => emit(state.copyWith(isToggleLoading: false)),
      (_) {
        final newStatus = !state.isSubscribed;
        final currentCount = state.user?.subscribersCount ?? 0;
        final adjustedCount = newStatus ? currentCount + 1 : currentCount - 1;
        final normalizedCount = adjustedCount < 0 ? 0 : adjustedCount;

        emit(
          state.copyWith(
            isToggleLoading: false,
            isSubscribed: newStatus,
            user: state.user?.copyWith(subscribersCount: normalizedCount),
          ),
        );
      },
    );
  }

  void syncSubscriptionStatus(bool isSubscribed) {
    final currentUser = state.user;
    if (currentUser == null) return;

    if (state.isSubscribed == isSubscribed) {
      return;
    }

    final currentCount = currentUser.subscribersCount ?? 0;
    var adjusted = currentCount + (isSubscribed ? 1 : -1);
    if (adjusted < 0) {
      adjusted = 0;
    }

    emit(
      state.copyWith(
        isSubscribed: isSubscribed,
        user: currentUser.copyWith(
          subscribersCount: adjusted,
        ),
      ),
    );
  }

  void clearUser() {
    emit(const CompanyState());
  }

  void setReviewFilter(ReviewFilterType filter, int userId) {
    String? sortBy;
    String? sortOrder;

    switch (filter) {
      case ReviewFilterType.positiveFirst:
        sortBy = 'score';
        sortOrder = 'desc';
        break;
      case ReviewFilterType.negativeFirst:
        sortBy = 'score';
        sortOrder = 'asc';
        break;
      case ReviewFilterType.recentFirst:
        sortBy = 'created_at';
        sortOrder = 'desc';
        break;
    }

    emit(state.copyWith(
      reviewFilter: filter,
      reviewSortBy: sortBy,
      reviewSortOrder: sortOrder,
    ));

    // Refetch reviews with new sort parameters
    fetchReviews(userId);
  }

  void setClipsFilter(ClipsFilterType filter) {
    emit(state.copyWith(clipsFilter: filter));
  }

  void setStreamsFilter(StreamsFilterType filter, int userId) {
    String? sortBy;

    switch (filter) {
      case StreamsFilterType.popular:
        sortBy = 'popular';
        break;
      case StreamsFilterType.liveFirst:
        sortBy = 'live_first';
        break;
      case StreamsFilterType.freeDelivery:
        sortBy = 'free_delivery';
        break;
    }

    emit(state.copyWith(
      streamsFilter: filter,
      streamsSortBy: sortBy,
    ));

    // Refetch streams with new sort parameter
    loadCompanyStreams(userId);
  }

  // Products methods
  Future<void> fetchProducts(int userId) async {
    if (userId == 0) {
      emit(
        state.copyWith(
          isLoadingProducts: false,
          errorMessageProducts: 'User id is missing',
        ),
      );
      return;
    }

    emit(state.copyWith(isLoadingProducts: true, errorMessageProducts: ''));

    final result = await _getCompanyProductsUsecase(
        GetCompanyProductsParams(userId: userId));

    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoadingProducts: false,
          errorMessageProducts: failure,
        ),
      ),
      (products) {
        emit(
          state.copyWith(
            isLoadingProducts: false,
            products: products,
          ),
        );
        // Reapply sorting if one was selected
        if (state.selectedSortOption != null) {
          sortProducts(state.selectedSortOption);
        }
      },
    );
  }

  void sortProducts(ProductSortOption? sortOption) {
    if (sortOption == null) {
      emit(state.copyWith(selectedSortOption: null));
      return;
    }

    final sortedProducts = List<ProductModel>.from(state.products);

    switch (sortOption) {
      case ProductSortOption.recentlyAdded:
        // Sort by ID descending (higher ID = more recent)
        sortedProducts.sort((a, b) => (b.id ?? 0).compareTo(a.id ?? 0));
        break;
      case ProductSortOption.cheapestFirst:
        // Sort by minimum price ascending
        sortedProducts.sort((a, b) {
          final priceA = _getMinPrice(a);
          final priceB = _getMinPrice(b);
          return priceA.compareTo(priceB);
        });
        break;
      case ProductSortOption.mostExpensiveFirst:
        // Sort by maximum price descending
        sortedProducts.sort((a, b) {
          final priceA = _getMaxPrice(a);
          final priceB = _getMaxPrice(b);
          return priceB.compareTo(priceA);
        });
        break;
    }

    emit(state.copyWith(
      products: sortedProducts,
      selectedSortOption: sortOption,
    ));
  }

  double _getMinPrice(ProductModel product) {
    if (product.variants.isEmpty) return double.infinity;
    final prices = product.variants
        .where((v) => v.price != null)
        .map((v) => v.price!)
        .toList();
    return prices.isEmpty
        ? double.infinity
        : prices.reduce((a, b) => a < b ? a : b);
  }

  double _getMaxPrice(ProductModel product) {
    if (product.variants.isEmpty) return 0.0;
    final prices = product.variants
        .where((v) => v.price != null)
        .map((v) => v.price!)
        .toList();
    return prices.isEmpty ? 0.0 : prices.reduce((a, b) => a > b ? a : b);
  }

  // Reviews methods
  Future<void> fetchReviews(int userId) async {
    if (userId == 0) {
      emit(
        state.copyWith(
          isLoadingReviews: false,
          errorMessageReviews: 'User id is missing',
        ),
      );
      return;
    }

    emit(state.copyWith(isLoadingReviews: true, errorMessageReviews: ''));

    final result = await _getUserRatingsUsecase(
      GetUserRatingsParams(
        userId: userId,
        sortBy: state.reviewSortBy ?? 'created_at',
        sortOrder: state.reviewSortOrder ?? 'desc',
      ),
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoadingReviews: false,
          errorMessageReviews: failure,
        ),
      ),
      (ratings) => emit(
        state.copyWith(
          isLoadingReviews: false,
          userRatings: ratings,
        ),
      ),
    );
  }

  // Streams methods
  Future<void> loadCompanyStreams(int userId) async {
    emit(state.copyWith(isLoadingStreams: true, errorMessageStreams: ''));

    final result = await _getCompanyStreamsUsecase(
      GetCompanyStreamsParams(
        userId: userId,
        sortBy: state.streamsSortBy,
      ),
    );

    result.fold(
      (failure) => emit(state.copyWith(
        isLoadingStreams: false,
        errorMessageStreams: failure,
      )),
      (response) => emit(state.copyWith(
        isLoadingStreams: false,
        streams: response.data ?? [],
        streamsPagination: response.pagination,
        streamsStats: response.stats,
        errorMessageStreams: '',
      )),
    );
  }

  // Clips methods
  Future<void> loadUserClips(int userId) async {
    emit(state.copyWith(isLoadingClips: true, errorMessageClips: ''));
    final result = await _getUserClipsUsecase(userId);
    result.fold(
      (failure) => emit(state.copyWith(
        isLoadingClips: false,
        errorMessageClips: failure,
      )),
      (response) async {
        emit(state.copyWith(
          isLoadingClips: false,
          clips: response.data,
          clipsPagination: response.pagination,
          errorMessageClips: '',
        ));

        // Generate thumbnails for clips that don't have cached thumbnails
        await _generateThumbnailsForClips(response.data);
      },
    );
  }

  // Thumbnail methods
  Future<void> _generateThumbnailsForClips(List<ClipModel> clips) async {
    final Map<int, Uint8List> newThumbnails = Map.from(state.clipThumbnails);
    bool hasNewThumbnails = false;

    for (final clip in clips) {
      // Skip if thumbnail already cached
      if (newThumbnails.containsKey(clip.id) || clip.videoUrl.isEmpty) {
        continue;
      }

      try {
        final thumbnail = await VideoThumbnail.thumbnailData(
          video: clip.videoUrl,
          imageFormat: ImageFormat.JPEG,
          timeMs: 1000,
          quality: 75,
        );

        if (thumbnail != null) {
          newThumbnails[clip.id] = thumbnail;
          hasNewThumbnails = true;
        }
      } catch (e) {
        debugPrint('Error generating thumbnail for clip ${clip.id}: $e');
      }
    }

    if (hasNewThumbnails) {
      emit(state.copyWith(clipThumbnails: newThumbnails));
    }
  }

  Uint8List? getClipThumbnail(int clipId) {
    return state.clipThumbnails[clipId];
  }

  void clearThumbnails() {
    emit(state.copyWith(clipThumbnails: const {}));
  }

  // Toggle favorite for clip
  Future<void> toggleClipFavorite(int clipId) async {
    final isCurrentlyFavorited = state.favoritedClipIds.contains(clipId);
    final updatedFavoritedIds = Set<int>.from(state.favoritedClipIds);

    // Optimistically update UI immediately
    if (isCurrentlyFavorited) {
      updatedFavoritedIds.remove(clipId);
    } else {
      updatedFavoritedIds.add(clipId);
    }

    emit(state.copyWith(favoritedClipIds: updatedFavoritedIds));

    // Make API call in background
    final result = await _toggleFavoriteUsecase(
      ToggleFavoriteParams(type: 'clip', id: clipId),
    );

    result.fold(
      (error) {
        // Rollback: restore previous favorite state
        final rollbackIds = Set<int>.from(state.favoritedClipIds);
        if (isCurrentlyFavorited) {
          rollbackIds.add(clipId);
        } else {
          rollbackIds.remove(clipId);
        }
        emit(state.copyWith(favoritedClipIds: rollbackIds));
        showFloatingMessageError(error);
      },
      (_) {
        // Success: state already updated optimistically
      },
    );
  }
}
