part of '../../awards.dart';

class _SendRewardContent extends StatelessWidget {
  const _SendRewardContent({
    required this.controller,
    required this.onContinue,
  });

  final TextEditingController controller;
  final VoidCallback onContinue;

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
                SendRewardHeaderWidget(),
                12.ph,
                SendRewardSelectionWidget(),
                32.ph,
                SendRewardThankYouWidget(controller: controller),
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
                  SendRewardContinueButtonWidget(onContinue: onContinue),
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



class SendRewardContinueButtonWidget extends StatelessWidget {
  const SendRewardContinueButtonWidget({
    super.key,
    required this.onContinue,
  });

  final VoidCallback onContinue;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AwardsClubCubit, AwardsClubState>(
      builder: (context, state) {
        final isDisabled =
            state.selectedIndex == null || state.isRewardSubmitting;

        return CustomGradientButton(
          text: 'continue'.tr(),
          isLoading: state.isRewardSubmitting,
          isDisabled: isDisabled,
          onPressed: state.isRewardSubmitting ? null : onContinue,
        );
      },
    );
  }
}
