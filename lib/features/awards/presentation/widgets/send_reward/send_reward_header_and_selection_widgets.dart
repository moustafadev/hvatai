part of '../../awards.dart';

class SendRewardHeaderWidget extends StatelessWidget {
  const SendRewardHeaderWidget({super.key});

  void _showRewardInfoSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.r),
        ),
      ),
      builder: (_) => const SendRewardInfoBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(
          text: 'sendReward'.tr(),
          fontSize: 20.sp,
          fontWeight: FontWeight.w800,
        ),
        const Spacer(),
        GestureDetector(
          onTap: () => _showRewardInfoSheet(context),
          child: Icon(
            Icons.info_outline_rounded,
            color: AppColors.graniteGray,
            size: 24.sp,
          ),
        ),
      ],
    );
  }
}

class SendRewardSelectionWidget extends StatelessWidget {
  const SendRewardSelectionWidget({super.key});

  static final List<EmojiPricingItem> _rewardItems = [
    EmojiPricingItem(emoji: '👋', price: '50 ₽'),
    EmojiPricingItem(emoji: '👍', price: '100 ₽'),
    EmojiPricingItem(emoji: '😊', price: '200 ₽'),
    EmojiPricingItem(emoji: '🤩', price: '500 ₽'),
    EmojiPricingItem(emoji: '🤑', price: '1000 ₽'),
    EmojiPricingItem(emoji: '💸', price: '5000 ₽'),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AwardsClubCubit, AwardsClubState>(
      builder: (context, state) {
        final cubit = context.read<AwardsClubCubit>();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'selectReward'.tr(),
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
            CustomText(
              text: 'rewardDescription'.tr(),
              fontSize: 14.sp,
              color: AppColors.graniteGray,
              fontWeight: FontWeight.w500,
            ),
            32.ph,
            EmojiPricingRow(
              items: _rewardItems,
              selectedIndex: state.selectedIndex,
              onSelect: cubit.selectAwards,
            ),
          ],
        );
      },
    );
  }
}
