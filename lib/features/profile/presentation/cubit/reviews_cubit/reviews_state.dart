part of 'reviews_cubit.dart';

@freezed
class ReviewsState with _$ReviewsState {
  const factory ReviewsState({
    @Default(false) bool isLoading,
    @Default(false) bool isReplying,
    @Default('') String errorMessage,
    @Default(true)
    bool isShowingAboutMe, // true = Обо мне, false = Оставленные мной
    UserRatingsResponse? userRatings,
    MyRatingsResponse? myRatings,
    GivenRating? deletedRating, // Store deleted rating for rollback
  }) = _ReviewsState;
}
