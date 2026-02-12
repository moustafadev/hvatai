part of '../auth.dart';

class InterestsDetailScreen extends StatelessWidget {
  const InterestsDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<InterestsDetailCubit>()..getFavCategories(),
      child: BlocBuilder<InterestsDetailCubit, InterestsDetailState>(
          builder: (context, state) {
        final cubit = context.read<InterestsDetailCubit>();
        if (state.isLoadingCategories) {
          return Scaffold(
            body: Center(child: CustomCircularProgrressIndicator()),
          );
        }
        return AbsorbPointer(
          absorbing: state.isLoading,
          child: Scaffold(
            backgroundColor: AppColors.background,
            appBar: AppBar(
              backgroundColor: AppColors.background,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios,
                    color: AppColors.blackColorIcon),
                onPressed: () => context.pop(),
              ),
              actions: [
                TextButton.icon(
                  iconAlignment: IconAlignment.end,
                  icon: SvgPicture.asset(Assets.assetsIconsDoubleAltArrow),
                  label: CustomText(
                    text: 'skip'.tr(),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  onPressed: () => context.push(AppRoutes.notification),
                )
              ],
            ),
            body: SafeArea(
              bottom: false,
              child: CustomScrollView(
                physics: BouncingScrollPhysics(),
                slivers: [
                  SliverToBoxAdapter(
                    child: InterestsDetailWidget(),
                  ),
                  SliverFillRemaining(
                    hasScrollBody: false,
                    fillOverscroll: true,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 20),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: CustomGradientButton(
                          isLoading: state.isLoading,
                          isDisabled: !(state.selectedDetailIds.isNotEmpty),
                          text: 'continue'.tr(),
                          onPressed: () => cubit.addFavCategories(context),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
