import 'dart:typed_data';
import 'package:equatable/equatable.dart';
import 'package:hvatai/features/search/data/model/user_data_model.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/profile/data/model/ratings_model/ratings_model.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';
import 'package:hvatai/features/stream/data/models/my_streams/my_streams_response.dart';
import 'package:hvatai/features/create_clip/data/models/clip_model/clip_model.dart';

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

class CompanyState extends Equatable {
  const CompanyState({
    this.isLoading = false,
    this.errorMessage = '',
    this.user,
    this.isSubscribed = false,
    this.isToggleLoading = false,
    this.reviewFilter,
    this.clipsFilter,
    // Products
    this.isLoadingProducts = false,
    this.errorMessageProducts = '',
    this.products = const [],
    // Reviews
    this.isLoadingReviews = false,
    this.errorMessageReviews = '',
    this.userRatings,
    // Streams
    this.isLoadingStreams = false,
    this.errorMessageStreams = '',
    this.streams = const [],
    this.streamsPagination,
    this.streamsStats,
    // Clips
    this.isLoadingClips = false,
    this.errorMessageClips = '',
    this.clips = const [],
    this.clipsPagination,
    // Thumbnail cache: Map<clipId, thumbnailBytes>
    this.clipThumbnails = const {},
  });

  final bool isLoading;
  final String errorMessage;
  final UserDataModel? user;
  final bool isSubscribed;
  final bool isToggleLoading;
  final ReviewFilterType? reviewFilter;
  final ClipsFilterType? clipsFilter;

  // Products
  final bool isLoadingProducts;
  final String errorMessageProducts;
  final List<ProductModel> products;

  // Reviews
  final bool isLoadingReviews;
  final String errorMessageReviews;
  final UserRatingsResponse? userRatings;

  // Streams
  final bool isLoadingStreams;
  final String errorMessageStreams;
  final List<StreamDataModel> streams;
  final MyStreamsPagination? streamsPagination;
  final MyStreamsStats? streamsStats;

  // Clips
  final bool isLoadingClips;
  final String errorMessageClips;
  final List<ClipModel> clips;
  final ClipsPaginationModel? clipsPagination;

  // Thumbnail cache
  final Map<int, Uint8List> clipThumbnails;

  CompanyState copyWith({
    bool? isLoading,
    String? errorMessage,
    UserDataModel? user,
    bool? isSubscribed,
    bool? isToggleLoading,
    ReviewFilterType? reviewFilter,
    ClipsFilterType? clipsFilter,
    bool clearReviewFilter = false,
    bool clearClipsFilter = false,
    // Products
    bool? isLoadingProducts,
    String? errorMessageProducts,
    List<ProductModel>? products,
    // Reviews
    bool? isLoadingReviews,
    String? errorMessageReviews,
    UserRatingsResponse? userRatings,
    // Streams
    bool? isLoadingStreams,
    String? errorMessageStreams,
    List<StreamDataModel>? streams,
    MyStreamsPagination? streamsPagination,
    MyStreamsStats? streamsStats,
    // Clips
    bool? isLoadingClips,
    String? errorMessageClips,
    List<ClipModel>? clips,
    ClipsPaginationModel? clipsPagination,
    // Thumbnails
    Map<int, Uint8List>? clipThumbnails,
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
      isLoadingProducts: isLoadingProducts ?? this.isLoadingProducts,
      errorMessageProducts: errorMessageProducts ?? this.errorMessageProducts,
      products: products ?? this.products,
      isLoadingReviews: isLoadingReviews ?? this.isLoadingReviews,
      errorMessageReviews: errorMessageReviews ?? this.errorMessageReviews,
      userRatings: userRatings ?? this.userRatings,
      isLoadingStreams: isLoadingStreams ?? this.isLoadingStreams,
      errorMessageStreams: errorMessageStreams ?? this.errorMessageStreams,
      streams: streams ?? this.streams,
      streamsPagination: streamsPagination ?? this.streamsPagination,
      streamsStats: streamsStats ?? this.streamsStats,
      isLoadingClips: isLoadingClips ?? this.isLoadingClips,
      errorMessageClips: errorMessageClips ?? this.errorMessageClips,
      clips: clips ?? this.clips,
      clipsPagination: clipsPagination ?? this.clipsPagination,
      clipThumbnails: clipThumbnails ?? this.clipThumbnails,
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
        isLoadingProducts,
        errorMessageProducts,
        products,
        isLoadingReviews,
        errorMessageReviews,
        userRatings,
        isLoadingStreams,
        errorMessageStreams,
        streams,
        streamsPagination,
        streamsStats,
        isLoadingClips,
        errorMessageClips,
        clips,
        clipsPagination,
        clipThumbnails,
      ];
}
