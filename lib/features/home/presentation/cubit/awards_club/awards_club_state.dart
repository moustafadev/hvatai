part of 'awards_club_cubit.dart';

@freezed
class AwardsClubState with _$AwardsClubState {
  const factory AwardsClubState({
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default(false) bool addThankYouNote,
    int? selectedIndex,
    UserDataModel? company,
    @Default(false) bool isSubscribed,
    @Default(false) bool isToggleLoading,
    @Default('wallet') String paymentMethod,
    @Default('') String rewardMessage,
    @Default(false) bool isRewardSubmitting,
    @Default(false) bool showRewardLoadingScreen,
    @Default(false) bool showRewardSuccessScreen,
    @Default(false) bool showRewardErrorScreen,
  }) = _AwardsClubState;
}
