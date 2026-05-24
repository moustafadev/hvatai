part of '../../awards.dart';

class SelectAwayRewardsContent extends StatelessWidget {
  const SelectAwayRewardsContent({super.key});

  void _handleSendReward(BuildContext context, SendRewardFlowCubit cubit) {
    final router = GoRouter.of(context);
    final navigator = Navigator.of(context, rootNavigator: true);

    cubit.sendReward(
      onSuccess: () {
        router.pop(true);
      },
      onWebView: (url) {
        router.push(
          AppRoutes.paymentWebView,
          extra: {
            'url': url,
            'isReward': true,
          },
        );
      },
      onQr: (qrSvg, url) {
        showSbpQrBottomSheet(navigator.context, qrSvg, url);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SendRewardFlowCubit, SendRewardFlowState>(
      builder: (context, state) {
        final cubit = context.read<SendRewardFlowCubit>();

        if (state.showRewardLoadingScreen) {
          return const Scaffold(
            backgroundColor: AppColors.background,
            body: Center(child: CircularProgressIndicator()),
          );
        }

        if (state.showRewardErrorScreen) {
          return RewardErrorScreen();
        }

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
                      RewardPayButtonWidget(
                        onPay: () => _handleSendReward(context, cubit),
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
