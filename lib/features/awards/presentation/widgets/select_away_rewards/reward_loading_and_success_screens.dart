part of '../../awards.dart';

class RewardLoadingScreen extends StatelessWidget {
  const RewardLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBackground,
      appBar: AppBar(
        backgroundColor: AppColors.lightGreyBackground,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: AppColors.blackDark),
          onPressed: () => context.pop(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(color: AppColors.primaryColor),
            24.ph,
            CustomText(
              text: 'processingPayment'.tr(),
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.blackColorIcon,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class RewardSuccessScreen extends StatelessWidget {
  const RewardSuccessScreen({super.key});

  void _handleContinue(BuildContext context) {
    final cubit = context.read<SendRewardFlowCubit>();
    cubit.resetRewardScreens();
    context.pop(true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBackground,
      appBar: AppBar(
        backgroundColor: AppColors.lightGreyBackground,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: AppColors.blackDark),
          onPressed: () => _handleContinue(context),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              Assets.assetsIconsSuccess,
              width: 60.w,
              height: 60.h,
            ),
            24.ph,
            CustomText(
              text: 'operationCompletedSuccessfully'.tr(),
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            CustomGradientButton(
              text: 'toMain'.tr(),
              onPressed: () => _handleContinue(context),
              width: 200.w,
              height: 52,
              borderRadius: 10,
            ),
            50.ph,
          ],
        ),
      ),
    );
  }
}
