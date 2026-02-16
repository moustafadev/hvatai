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
                  child: SvgPicture.asset(Assets.assetsIconsInfoCircle3),
                ),
              ],
            ),
            12.ph,
            CustomText(
              text: thankYouText,
              fontSize: 14.sp,
              color: AppColors.blackColor.withValues(alpha: 0.2),
              fontWeight: FontWeight.w500,
            ),
          ],
        );
      },
    );
  }
}
