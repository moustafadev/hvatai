part of 'send_reward_flow_cubit.dart';

@freezed
class SendRewardFlowState with _$SendRewardFlowState {
  const factory SendRewardFlowState({
    @Default(null) int? userId,
    @Default(null) int? selectedIndex,
    @Default(false) bool addThankYouNote,
    @Default('') String rewardMessage,
    @Default('wallet') String paymentMethod,
    @Default(false) bool isRewardSubmitting,
    @Default(false) bool showRewardLoadingScreen,
    @Default(false) bool showRewardSuccessScreen,
    @Default(false) bool showRewardErrorScreen,
    @Default('') String errorMessage,
  }) = _SendRewardFlowState;
}
