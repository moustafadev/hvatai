part of 'interests_cubit.dart';

@freezed
class InterestsState with _$InterestsState {
  const factory InterestsState({
    UserRegistrationData? userData,
    @Default([]) List<String> selectedInterests,
    @Default({}) Set<int> selectedIndices,
    @Default(false) bool isLoading,
  }) = _InterestsState;
}
