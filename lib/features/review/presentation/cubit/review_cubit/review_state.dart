part of 'review_cubit.dart';

@freezed
class ReviewState with _$ReviewState {
  const factory ReviewState({
    @Default(0) int rating,
    @Default('') String comment,
    @Default([]) List<String> images,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
  }) = _ReviewState;
}
