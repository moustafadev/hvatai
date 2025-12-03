part of '../../awards.dart';

class _SelectAwayRewardsContent extends StatelessWidget {
  const _SelectAwayRewardsContent({
    required this.onAddPayment,
    required this.onPay,
  });

  final VoidCallback onAddPayment;
  final VoidCallback onPay;

  @override
  Widget build(BuildContext context) {
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
                RewardHeaderWidget(),
                50.ph,
                RewardPaymentSummaryWidget(),
                32.ph,
                RewardPaymentMethodSectionWidget(onAddPayment: onAddPayment),
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
                  RewardPayButtonWidget(onPay: onPay),
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
