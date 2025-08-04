part of '../home.dart';

class SendRewardScreen extends StatelessWidget {
  const SendRewardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: BlocBuilder<AwardsClubCubit, AwardsClubState>(
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
                        onChanged: (val) => cubit.toggleAddThankYou(),
                      ),
                      12.ph,
                      CustomTextField(
                        hintText: 'writeSomething'.tr(),
                        fillColor: !state.addThankYouNote
                            ? AppColors.gray
                            : AppColors.white,
                        readOnly: !state.addThankYouNote,
                      ),
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
                          isLoading: state.isLoading,
                          isDisabled: state.selectedIndex == null,
                          onPressed: () {
                            context.push(AppRoutes.selectAwaySend,
                                extra: cubit);
                          },
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
      ),
    );
  }
}
