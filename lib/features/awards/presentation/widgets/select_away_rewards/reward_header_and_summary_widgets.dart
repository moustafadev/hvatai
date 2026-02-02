part of '../../awards.dart';

class RewardHeaderWidget extends StatelessWidget {
  const RewardHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SendRewardFlowCubit, SendRewardFlowState>(
      builder: (context, state) {
        final thankYouText = state.rewardMessage.isNotEmpty
            ? state.rewardMessage
            : 'noThanks'.tr();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomText(
                  text: 'sendReward'.tr(),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w800,
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.info_outline_rounded,
                    color: AppColors.graniteGray,
                    size: 24.sp,
                  ),
                ),
              ],
            ),
            12.ph,
            CustomText(
              text: thankYouText,
              fontSize: 14.sp,
              color: AppColors.graniteGray,
              fontWeight: FontWeight.w500,
            ),
          ],
        );
      },
    );
  }
}

class RewardPaymentSummaryWidget extends StatelessWidget {
  const RewardPaymentSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SendRewardFlowCubit, SendRewardFlowState>(
      builder: (context, state) {
        final cubit = context.read<SendRewardFlowCubit>();
        final selectedAmount = cubit.selectedAmount;
        final processingFee = cubit.selectedAmountFee;
        final total =
            selectedAmount != null ? selectedAmount + processingFee : 0;

        return Column(
          children: [
            Row(
              children: [
                CustomText(
                  text: 'reward'.tr(),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                const Spacer(),
                CustomText(
                  text: selectedAmount != null ? '$selectedAmount ₽' : '--',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w800,
                ),
              ],
            ),
            20.ph,
            Row(
              children: [
                CustomText(
                  text: 'processingFee'.tr(),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                const Spacer(),
                CustomText(
                  text: '$processingFee ₽',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w800,
                ),
              ],
            ),
            15.ph,
            Row(
              children: [
                CustomText(
                  text: 'total'.tr(),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                ),
                const Spacer(),
                CustomText(
                  text: selectedAmount != null ? '$total ₽' : '--',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
