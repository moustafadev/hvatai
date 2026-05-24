part of '../awards.dart';

class SelectAwayRewardsScreen extends StatelessWidget {
  final SendRewardFlowCubit sendRewardFlowCubit;
  const SelectAwayRewardsScreen({
    super.key,
    required this.sendRewardFlowCubit,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: sendRewardFlowCubit),
      ],
      child: BlocBuilder<SendRewardFlowCubit, SendRewardFlowState>(
        builder: (context, state) {
          if (state.showRewardLoadingScreen) {
            return const RewardLoadingScreen();
          }

          if (state.showRewardSuccessScreen) {
            return const RewardSuccessScreen();
          }

        

          return SelectAwayRewardsContent();
        },
      ),
    );
  }
}
