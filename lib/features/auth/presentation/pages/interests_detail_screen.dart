part of '../auth.dart';

class InterestsDetailScreen extends StatelessWidget {
  const InterestsDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<InterestsDetailCubit>()..getFavCategories(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios,
                color: AppColors.blackColorIcon),
            onPressed: () => context.pop(),
          ),
          actions: [
            TextButton.icon(
                iconAlignment: IconAlignment.end,
                icon: const Icon(
                  Icons.double_arrow,
                  color: AppColors.blackColorIcon,
                ),
                label: CustomText(
                    text: 'skip'.tr(),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackDark),
                onPressed: () => context.go(AppRoutes.home))
          ],
        ),
        body: SafeArea(
          bottom: false,
          child: BlocBuilder<InterestsDetailCubit, InterestsDetailState>(
            builder: (context, state) {
              final cubit = context.read<InterestsDetailCubit>();

              return CustomScrollView(
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
                          onPressed: (state.isLoading ||
                                  state.selectedDetailIds.isEmpty)
                              ? null
                              : () {
                                  cubit.addFavCategories(context);
                                },
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
