part of '../../awards.dart';

class RewardPaymentMethodSectionWidget extends StatelessWidget {
  const RewardPaymentMethodSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SendRewardFlowCubit, SendRewardFlowState>(
      builder: (context, state) {
        final cubit = context.read<SendRewardFlowCubit>();

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
              selectedPaymentMethod: state.paymentMethod,
              onWalletTap: () {
                cubit.setPaymentMethod(PaymentMethodType.wallet);
              },
              onCardTap: () {
                cubit.setPaymentMethod(PaymentMethodType.card);
              },
              onSbpTap: () {
                cubit.setPaymentMethod(PaymentMethodType.sbp);
              },
            ),
          ],
        );
      },
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
