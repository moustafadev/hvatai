import 'dart:typed_data';
import 'package:equatable/equatable.dart';
import 'package:hvatai/features/search/data/model/user_data_model.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/profile/data/model/ratings_model/ratings_model.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';
import 'package:hvatai/features/stream/data/models/my_streams/my_streams_response.dart';
import 'package:hvatai/features/create_clip/data/models/clip_model/clip_model.dart';
import 'package:hvatai/features/company/presentation/company.dart';

enum ReviewFilterType {
  positiveFirst,
  negativeFirst,
  recentFirst,
}

enum ClipsFilterType {
  popular,
  liveFirst,
  freeDelivery,
}

enum StreamsFilterType {
  popular,
  liveFirst,
  freeDelivery,
}

class CompanyState extends Equatable {
  const CompanyState({
    this.isLoading = false,
    this.errorMessage = '',
    this.user,
    this.isSubscribed = false,
    this.isToggleLoading = false,
    this.reviewFilter,
    this.clipsFilter,
    this.streamsFilter,
    // Products
    this.isLoadingProducts = false,
    this.errorMessageProducts = '',
    this.products = const [],
    this.selectedSortOption,
    // Reviews
    this.isLoadingReviews = false,
    this.errorMessageReviews = '',
    this.userRatings,
    this.reviewSortBy,
    this.reviewSortOrder,
    // Streams
    this.isLoadingStreams = false,
    this.errorMessageStreams = '',
    this.streams = const [],
    this.streamsPagination,
    this.streamsStats,
    this.streamsSortBy,
    // Clips
    this.isLoadingClips = false,
    this.errorMessageClips = '',
    this.clips = const [],
    this.clipsPagination,
    // Thumbnail cache: Map<clipId, thumbnailBytes>
    this.clipThumbnails = const {},
    // Favorited clip IDs
    this.favoritedClipIds = const {},
  });

  final bool isLoading;
  final String errorMessage;
  final UserDataModel? user;
  final bool isSubscribed;
  final bool isToggleLoading;
  final ReviewFilterType? reviewFilter;
  final ClipsFilterType? clipsFilter;
  final StreamsFilterType? streamsFilter;

  // Products
  final bool isLoadingProducts;
  final String errorMessageProducts;
  final List<ProductModel> products;
  final ProductSortOption? selectedSortOption;

  // Reviews
  final bool isLoadingReviews;
  final String errorMessageReviews;
  final UserRatingsResponse? userRatings;
  final String? reviewSortBy; // 'created_at' (default) or 'score'
  final String? reviewSortOrder; // 'desc' (default) or 'asc'

  // Streams
  final bool isLoadingStreams;
  final String errorMessageStreams;
  final List<StreamDataModel> streams;
  final MyStreamsPagination? streamsPagination;
  final MyStreamsStats? streamsStats;
  final String? streamsSortBy; // 'live_first', 'popular', 'free_delivery'

  // Clips
  final bool isLoadingClips;
  final String errorMessageClips;
  final List<ClipModel> clips;
  final ClipsPaginationModel? clipsPagination;

  // Thumbnail cache
  final Map<int, Uint8List> clipThumbnails;

  // Favorited clip IDs
  final Set<int> favoritedClipIds;

  CompanyState copyWith({
    bool? isLoading,
    String? errorMessage,
    UserDataModel? user,
    bool? isSubscribed,
    bool? isToggleLoading,
    ReviewFilterType? reviewFilter,
    ClipsFilterType? clipsFilter,
    StreamsFilterType? streamsFilter,
    bool clearReviewFilter = false,
    bool clearClipsFilter = false,
    bool clearStreamsFilter = false,
    // Products
    bool? isLoadingProducts,
    String? errorMessageProducts,
    List<ProductModel>? products,
    ProductSortOption? selectedSortOption,
    // Reviews
    bool? isLoadingReviews,
    String? errorMessageReviews,
    UserRatingsResponse? userRatings,
    String? reviewSortBy,
    String? reviewSortOrder,
    // Streams
    bool? isLoadingStreams,
    String? errorMessageStreams,
    List<StreamDataModel>? streams,
    MyStreamsPagination? streamsPagination,
    MyStreamsStats? streamsStats,
    String? streamsSortBy,
    // Clips
    bool? isLoadingClips,
    String? errorMessageClips,
    List<ClipModel>? clips,
    ClipsPaginationModel? clipsPagination,
    // Thumbnails
    Map<int, Uint8List>? clipThumbnails,
    // Favorited clips
    Set<int>? favoritedClipIds,
  }) {
    return CompanyState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
      user: user ?? this.user,
      isSubscribed: isSubscribed ?? this.isSubscribed,
      isToggleLoading: isToggleLoading ?? this.isToggleLoading,
      reviewFilter:
          clearReviewFilter ? null : (reviewFilter ?? this.reviewFilter),
      clipsFilter: clearClipsFilter ? null : (clipsFilter ?? this.clipsFilter),
      streamsFilter: clearStreamsFilter
          ? null
          : (streamsFilter ?? this.streamsFilter),
      isLoadingProducts: isLoadingProducts ?? this.isLoadingProducts,
      errorMessageProducts: errorMessageProducts ?? this.errorMessageProducts,
      products: products ?? this.products,
      selectedSortOption: selectedSortOption ?? this.selectedSortOption,
      isLoadingReviews: isLoadingReviews ?? this.isLoadingReviews,
      errorMessageReviews: errorMessageReviews ?? this.errorMessageReviews,
      userRatings: userRatings ?? this.userRatings,
      reviewSortBy: reviewSortBy ?? this.reviewSortBy,
      reviewSortOrder: reviewSortOrder ?? this.reviewSortOrder,
      isLoadingStreams: isLoadingStreams ?? this.isLoadingStreams,
      errorMessageStreams: errorMessageStreams ?? this.errorMessageStreams,
      streams: streams ?? this.streams,
      streamsPagination: streamsPagination ?? this.streamsPagination,
      streamsStats: streamsStats ?? this.streamsStats,
      streamsSortBy: streamsSortBy ?? this.streamsSortBy,
      isLoadingClips: isLoadingClips ?? this.isLoadingClips,
      errorMessageClips: errorMessageClips ?? this.errorMessageClips,
      clips: clips ?? this.clips,
      clipsPagination: clipsPagination ?? this.clipsPagination,
      clipThumbnails: clipThumbnails ?? this.clipThumbnails,
      favoritedClipIds: favoritedClipIds ?? this.favoritedClipIds,
    );
  }

  @override
  List<Object?> get props => <Object?>[
        isLoading,
        errorMessage,
        user,
        isSubscribed,
        isToggleLoading,
        reviewFilter,
        clipsFilter,
        streamsFilter,
        isLoadingProducts,
        errorMessageProducts,
        products,
        selectedSortOption,
        isLoadingReviews,
        errorMessageReviews,
        userRatings,
        reviewSortBy,
        reviewSortOrder,
        isLoadingStreams,
        errorMessageStreams,
        streams,
        streamsPagination,
        streamsStats,
        streamsSortBy,
        isLoadingClips,
        errorMessageClips,
        clips,
        clipsPagination,
        clipThumbnails,
        favoritedClipIds,
      ];
}
