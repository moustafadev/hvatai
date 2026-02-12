part of 'interests_detail_cubit.dart';

@freezed
class InterestsDetailState with _$InterestsDetailState {
  const factory InterestsDetailState({
    required UserRegistrationData user,
    @Default({}) Set<int> selectedDetailIds,
    @Default({}) Set<int> selectedIndices,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingCategories,
    @Default('') String errorMessage,
    CategoryModel? categories,
    @Default([]) List<int> selectedCategoryIds,
  }) = _InterestsDetailState;
}
