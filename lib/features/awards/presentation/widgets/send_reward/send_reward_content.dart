part of '../../awards.dart';

class SendRewardContent extends StatelessWidget {
  const SendRewardContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.blackDark,
          ),
          onPressed: () => context.pop(),
        ),
      ),
      body: BlocBuilder<SendRewardFlowCubit, SendRewardFlowState>(
        builder: (context, state) {
          final cubit = context.read<SendRewardFlowCubit>();

          return CustomScrollView(
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
                          // onTap: () => _showRewardInfoSheet(context),
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
                      color: AppColors.blackColor.withValues(alpha: 0.2),
                      fontWeight: FontWeight.w500,
                    ),
                    32.ph,
                    EmojiPricingRow(
                      selectedIndex: state.selectedIndex,
                      onSelect: cubit.selectAwards,
                    ),
                    32.ph,
                    SendRewardThankYouWidget(),
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
                      const SendRewardContinueButtonWidget(),
                      20.ph,
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class SendRewardContinueButtonWidget extends StatelessWidget {
  const SendRewardContinueButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SendRewardFlowCubit, SendRewardFlowState>(
      builder: (context, state) {
        final isDisabled = state.selectedIndex == null;

        return CustomGradientButton(
          text: 'continue'.tr(),
          isDisabled: isDisabled,
          onPressed: isDisabled
              ? null
              : () async {
                  final cubit = context.read<SendRewardFlowCubit>();

                  final result = await context.push<bool>(
                    AppRoutes.selectAwaySend,
                    extra: {'sendRewardFlowCubit': cubit},
                  );

                  if (!context.mounted) return;
                  if (result == true) {
                    context.pop();
                  }
                },
        );
      },
    );
  }
}
