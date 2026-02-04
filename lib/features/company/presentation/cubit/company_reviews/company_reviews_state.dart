part of 'company_reviews_cubit.dart';

@freezed
class CompanyReviewsState with _$CompanyReviewsState {
  const factory CompanyReviewsState({
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    UserRatingsResponse? userRatings,
  }) = _CompanyReviewsState;
}
