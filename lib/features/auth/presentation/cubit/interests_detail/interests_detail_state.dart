part of 'interests_detail_cubit.dart';

@freezed
class InterestsDetailState with _$InterestsDetailState {
  const factory InterestsDetailState({
    required UserRegistrationData user,
    @Default([]) List<String> generalInterests,
    @Default({}) Set<String> selectedDetails,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
  }) = _InterestsDetailState;
}
