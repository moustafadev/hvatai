part of '../../awards.dart';

class RewardErrorScreen extends StatelessWidget {
  const RewardErrorScreen({super.key});

  void _handleRetry(BuildContext context) {
    context.read<SendRewardFlowCubit>().sendReward();
  }

  void _handleClose(BuildContext context) {
    context.read<SendRewardFlowCubit>().resetRewardScreens();
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: AppColors.blackDark),
          onPressed: () => _handleClose(context),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: '🙁',
              fontSize: 80.sp,
            ),
            24.ph,
            CustomText(
              text: 'anErrorOccurred'.tr(),
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.center,
            ),
            40.ph,
            CustomGradientButton(
              text: 'retry'.tr(),
              onPressed: () => _handleRetry(context),
              width: 200.w,
              height: 52,
              borderRadius: 10,
            ),
          ],
        ),
      ),
    );
  }
}
