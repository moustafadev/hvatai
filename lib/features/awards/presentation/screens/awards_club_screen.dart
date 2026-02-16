part of '../awards.dart';

class AwardsClubScreen extends StatelessWidget {
  const AwardsClubScreen({
    super.key,
    this.initialUser,
    this.initialIsSubscribed = false,
    this.companyCubit,
  });

  final UserDataModel? initialUser;
  final bool initialIsSubscribed;
  final CompanyCubit? companyCubit;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<AwardsClubCubit>()
        ..setInitialData(
          user: initialUser,
          isSubscribed: initialIsSubscribed,
        ),
      child: _AwardsClubView(
        companyCubit: companyCubit,
      ),
    );
  }
}

class _AwardsClubView extends StatelessWidget {
  const _AwardsClubView({
    this.companyCubit,
  });

  final CompanyCubit? companyCubit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: BlocConsumer<AwardsClubCubit, AwardsClubState>(
        listenWhen: (previous, current) =>
            previous.isSubscribed != current.isSubscribed,
        listener: (_, state) {
          companyCubit?.syncSubscriptionStatus(state.isSubscribed);
        },
        builder: (context, state) {
          return Stack(
            children: [
              CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: AwardsClubHeaderWidget(),
                  ),
                  AwardsClubListWidget(),
                ],
              ),
              // Fixed bottom subscribe button
              Positioned(
                left: 16.w,
                right: 16.w,
                bottom: 0,
                child: SafeArea(
                  top: false,
                  child: CustomButton(
                    title: state.isSubscribed
                        ? 'unsubscribe'.tr()
                        : 'subscribe'.tr(),
                    color: state.isSubscribed
                        ? AppColors.white
                        : AppColors.blackDark,
                    textColor: state.isSubscribed
                        ? AppColors.blackDark
                        : AppColors.white,
                    colorBorderSide:
                        state.isSubscribed ? AppColors.blackDark : null,
                    isLoading: state.isToggleLoading,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w800,
                    height: 54,
                    radius: 10.r,
                    onPressed: () {
                      context.read<AwardsClubCubit>().toggleSubscription();
                    },
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
