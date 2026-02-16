part of '../auth.dart';

class InterestsScreen extends StatelessWidget {
  const InterestsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<InterestsCubit>()..getCategories(),
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: AppColors.background,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios,
                color: AppColors.blackColorIcon),
            onPressed: () => context.pop(),
          ),
        ),
        body: SafeArea(
          bottom: false,
          child: BlocBuilder<InterestsCubit, InterestsState>(
            builder: (context, state) {
              final interests = state.categories;
              final cubit = context.read<InterestsCubit>();
              if (state.isLoadingCategories) {
                return Scaffold(
                  body: Center(child: CustomCircularProgressIndicator()),
                );
              }

              return AbsorbPointer(
                absorbing: state.isLoading,
                child: CustomScrollView(
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      sliver: SliverList(
                        delegate: SliverChildListDelegate(
                          [
                            16.ph,
                            CustomText(
                              text: 'interestsTitle'.tr(),
                              fontSize: 28.sp,
                              fontWeight: FontWeight.w800,
                            ),
                            4.ph,
                            CustomText(
                              text: 'interestsSubtitle'.tr(),
                              fontSize: 16.sp,
                              color:
                                  AppColors.blackColor.withValues(alpha: 0.2),
                              fontWeight: FontWeight.w600,
                            ),
                            20.ph,
                            ResponsiveGridListBuilder(
                              minItemWidth: 1,
                              minItemsPerRow: 3,
                              maxItemsPerRow: 3,
                              horizontalGridSpacing: 8.h,
                              verticalGridSpacing: 12.h,
                              builder: (context, items) => Column(
                                children: items,
                              ),
                              gridItems: List.generate(interests!.data!.length,
                                  (index) {
                                final category = interests.data![index];
                                final isSelected =
                                    state.selectedIndices.contains(index);

                                return CategoryCard(
                                  category: category,
                                  isSelected: isSelected,
                                  showEye: false, // ✅ hide it here
                                  onTap: () => cubit.toggleInterest(
                                      index, category.id ?? 0),
                                );
                              }),
                            ),
                            // space for button when scrolling
                          ],
                        ),
                      ),
                    ),
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 20),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: CustomGradientButton(
                            isLoading: state.isLoading,
                            isDisabled: !(state.selectedCategoryIds.isNotEmpty),
                            text: "continue".tr(),
                            onPressed: () {
                              cubit.addFavCategories(context);
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
