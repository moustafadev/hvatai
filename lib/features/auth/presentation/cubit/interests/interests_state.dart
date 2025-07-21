part of 'interests_cubit.dart';

@freezed
class InterestsState with _$InterestsState {
  const factory InterestsState({
    required UserRegistrationData user,
    @Default([]) List<String> selectedInterests,
    @Default({}) Set<int> selectedIndices,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
  }) = _InterestsState;
}
