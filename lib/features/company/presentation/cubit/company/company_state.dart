import 'package:equatable/equatable.dart';
import 'package:hvatai/features/search/data/model/user_data_model.dart';

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
  });

  final bool isLoading;
  final String errorMessage;
  final UserDataModel? user;
  final bool isSubscribed;
  final bool isToggleLoading;
  final ReviewFilterType? reviewFilter;
  final ClipsFilterType? clipsFilter;

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
  }) {
    return CompanyState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
      user: user ?? this.user,
      isSubscribed: isSubscribed ?? this.isSubscribed,
      isToggleLoading: isToggleLoading ?? this.isToggleLoading,
      reviewFilter: clearReviewFilter ? null : (reviewFilter ?? this.reviewFilter),
      clipsFilter: clearClipsFilter ? null : (clipsFilter ?? this.clipsFilter),
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
      ];
}
