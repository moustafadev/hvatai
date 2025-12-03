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
      backgroundColor: AppColors.lightGreyBackground,
      body: WillPopScope(
        onWillPop: () async {
          context.pop(companyCubit?.state.isSubscribed ?? false);
          return true;
        },
        child: BlocConsumer<AwardsClubCubit, AwardsClubState>(
          listenWhen: (previous, current) =>
              previous.isSubscribed != current.isSubscribed,
          listener: (_, state) {
            companyCubit?.syncSubscriptionStatus(state.isSubscribed);
          },
          builder: (context, state) {
            return CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: AwardsClubHeaderWidget(),
                ),
                AwardsClubListWidget(),
              ],
            );
          },
        ),
      ),
    );
  }
}
