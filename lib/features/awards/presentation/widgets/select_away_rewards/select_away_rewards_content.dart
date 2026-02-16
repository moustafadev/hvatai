part of '../../awards.dart';

class SelectAwayRewardsContent extends StatelessWidget {
  const SelectAwayRewardsContent({super.key});

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
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                RewardHeaderWidget(),
                50.ph,
                RewardPaymentSummaryWidget(),
                32.ph,
                RewardPaymentMethodSectionWidget(),
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
                  RewardPayButtonWidget(onPay: () {
                    final cubit = context.read<SendRewardFlowCubit>();
                    cubit.sendReward();
                  }),
                  20.ph,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
