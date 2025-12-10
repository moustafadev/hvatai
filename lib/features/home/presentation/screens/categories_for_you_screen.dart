part of '../home.dart';

class CategoriesForYouScreen extends StatelessWidget {
  const CategoriesForYouScreen({
    super.key,
    required this.liveStreamsCubit,
    required this.categoriesCubit,
    required this.categories,
  });

  final LiveStreamsCubit liveStreamsCubit;
  final CategoriesCubit categoriesCubit;
  final List<CategoryData> categories;

  void _apply(BuildContext context) {
    liveStreamsCubit.fetchLiveStreams(
      isRefresh: true,
      categoryIds: categoriesCubit.state.selectedCategoryIds,
    );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBackground,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () => context.pop(),
                        icon: const Icon(Icons.arrow_back_ios,
                            color: AppColors.blackColorIcon),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: CustomText(
                    text: 'categoriesForYou'.tr(),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                24.ph,
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: BlocBuilder<CategoriesCubit, CategoriesState>(
                      bloc: categoriesCubit,
                      builder: (context, catState) {
                        return GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 12,
                            childAspectRatio: 0.82,
                          ),
                          itemCount: categories.length,
                          itemBuilder: (context, index) {
                            final cat = categories[index];
                            final catId = cat.id ?? 0;
                            final isSelected =
                                catState.selectedCategoryIds.contains(catId);
                            return CategoryCard(
                              category: cat,
                              isSelected: isSelected,
                              onTap: () =>
                                  categoriesCubit.toggleInterest(index, catId),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 100), // spacer for the bottom button
              ],
            ),
            Positioned(
              left: 16,
              right: 16,
              bottom: 32,
              child: BlocBuilder<CategoriesCubit, CategoriesState>(
                bloc: categoriesCubit,
                builder: (context, catState) {
                  return CustomGradientButton(
                    text: 'Применить',
                    height: 54.h,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w800,
                    isDisabled: catState.selectedCategoryIds.isEmpty,
                    onPressed: () => _apply(context),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
