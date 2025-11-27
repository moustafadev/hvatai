part of '../home.dart';

class SendRewardScreen extends StatefulWidget {
  const SendRewardScreen({super.key});

  @override
  State<SendRewardScreen> createState() => _SendRewardScreenState();
}

class _SendRewardScreenState extends State<SendRewardScreen> {
  late final TextEditingController _noteController;

  @override
  void initState() {
    super.initState();
    final initialMessage = context.read<AwardsClubCubit>().state.rewardMessage;
    _noteController = TextEditingController(text: initialMessage);
  }

  @override
  void dispose() {
    _noteController.dispose();
    super.dispose();
  }

  Future<void> _handleContinue(
    BuildContext context,
    AwardsClubCubit cubit,
  ) async {
    if (cubit.state.selectedIndex == null) {
      showFloatingMessageError('rewardAmountRequired'.tr());
      return;
    }

    final message =
        cubit.state.addThankYouNote ? _noteController.text.trim() : '';
    cubit.updateRewardMessage(message);

    final result = await context.push<bool>(
      AppRoutes.selectAwaySend,
      extra: cubit,
    );

    if (!context.mounted) return;
    if (result == true) {
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AwardsClubCubit, AwardsClubState>(
      builder: (context, state) {
        final cubit = context.read<AwardsClubCubit>();
        return Scaffold(
          backgroundColor: AppColors.lightGreyBackground,
          appBar: AppBar(
            backgroundColor: AppColors.lightGreyBackground,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: AppColors.blackDark,
              ),
              onPressed: () => context.pop(),
            ),
          ),
          body: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    Row(
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
                    ),
                    12.ph,
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
                      items: [
                        EmojiPricingItem(emoji: '👋', price: '50 ₽'),
                        EmojiPricingItem(emoji: '👍', price: '100 ₽'),
                        EmojiPricingItem(emoji: '😊', price: '200 ₽'),
                        EmojiPricingItem(emoji: '🤩', price: '500 ₽'),
                        EmojiPricingItem(emoji: '🤑', price: '1000 ₽'),
                        EmojiPricingItem(emoji: '💸', price: '5000 ₽'),
                      ],
                      selectedIndex: state.selectedIndex,
                      onSelect: cubit.selectAwards,
                    ),
                    32.ph,
                    CustomSwitchWidget(
                      title: 'addThanks'.tr(),
                      value: state.addThankYouNote,
                      onChanged: (val) {
                        cubit.setAddThankYou(val);
                        if (!val) {
                          _noteController.clear();
                          cubit.updateRewardMessage('');
                        }
                      },
                    ),
                    12.ph,
                    CustomTextField(
                      hintText: 'writeSomething'.tr(),
                      controller: _noteController,
                      fillColor: !state.addThankYouNote
                          ? AppColors.gray
                          : AppColors.white,
                      readOnly: !state.addThankYouNote,
                    ),
                    32.ph,
                 
                  ]),
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 20.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomGradientButton(
                        text: 'continue'.tr(),
                        isLoading: state.isRewardSubmitting,
                        isDisabled: state.selectedIndex == null ||
                            state.isRewardSubmitting,
                        onPressed: state.isRewardSubmitting
                            ? null
                            : () => _handleContinue(context, cubit),
                      ),
                      20.ph,
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

void _showRewardInfoSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20.r),
      ),
    ),
    builder: (_) => const _RewardInfoBottomSheet(),
  );
}

class _RewardInfoBottomSheet extends StatelessWidget {
  const _RewardInfoBottomSheet();

  List<_RewardInfoItem> get _items => [
        _RewardInfoItem(
          iconPath: Assets.assetsIconsAmount,
          text: 'rewardInfoPoint1'.tr(),
        ),
        _RewardInfoItem(
          iconPath: Assets.assetsIconsHeart2,
          text: 'rewardInfoPoint2'.tr(),
        ),
        _RewardInfoItem(
          iconPath: Assets.assetsIconsMessage2,
          text: 'rewardInfoPoint3'.tr(),
        ),
        _RewardInfoItem(
          iconPath: Assets.assetsIconsDollar2,
          text: 'rewardInfoPoint4'.tr(),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 44.w,
              height: 4.h,
              margin: EdgeInsets.only(bottom: 12.h),
              decoration: BoxDecoration(
                color: AppColors.gray,
                borderRadius: BorderRadius.circular(30.r),
              ),
            ),
          ),
          CustomText(
            text: 'rewardInfoTitle'.tr(),
            fontSize: 20.sp,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w800,
          ),
          20.ph,
          ..._items.map(
            (item) => Padding(
              padding: EdgeInsets.only(bottom: 16.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.r),
                    child: SvgPicture.asset(
                      item.iconPath,
                      colorFilter: ColorFilter.mode(
                        AppColors.blackDark,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  12.pw,
                  Expanded(
                    child: CustomText(
                      text: item.text,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
          ),
          8.ph,
        ],
      ),
    );
  }
}

class _RewardInfoItem {
  _RewardInfoItem({required this.iconPath, required this.text});

  final String iconPath;
  final String text;
}
