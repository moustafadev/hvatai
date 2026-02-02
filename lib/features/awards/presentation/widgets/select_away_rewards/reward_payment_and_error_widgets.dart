part of '../../awards.dart';

class RewardPaymentMethodSectionWidget extends StatelessWidget {
  const RewardPaymentMethodSectionWidget({
    super.key,
    required this.onAddPayment,
  });

  final VoidCallback onAddPayment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: 'paymentMethod'.tr(),
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
        ),
        12.ph,
        PaymentMethodsSection(
          walletSelected: true,
          onAddPaymentTap: onAddPayment,
        ),
      ],
    );
  }
}

class RewardPayButtonWidget extends StatelessWidget {
  const RewardPayButtonWidget({super.key, required this.onPay});

  final VoidCallback onPay;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SendRewardFlowCubit, SendRewardFlowState>(
      builder: (context, state) {
        final cubit = context.read<SendRewardFlowCubit>();
        final selectedAmount = cubit.selectedAmount;
        final isDisabled = selectedAmount == null || state.isRewardSubmitting;

        return CustomGradientButton(
          text: 'pay'.tr(),
          isLoading: state.isRewardSubmitting,
          isDisabled: isDisabled,
          onPressed: selectedAmount == null ? null : onPay,
        );
      },
    );
  }
}

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
      backgroundColor: AppColors.lightGreyBackground,
      appBar: AppBar(
        backgroundColor: AppColors.lightGreyBackground,
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
