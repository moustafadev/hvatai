part of 'awards_club_cubit.dart';

@freezed
class AwardsClubState with _$AwardsClubState {
  const factory AwardsClubState({
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default(false) bool addThankYouNote,
    @Default(0) int selectedMethodIndex,
    int? selectedIndex,
  }) = _AwardsClubState;
}
