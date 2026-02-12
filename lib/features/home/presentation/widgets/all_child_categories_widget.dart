part of '../home.dart';

class AllChildCategoriesWidget extends StatelessWidget {
  const AllChildCategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      builder: (context, state) {
        final cubit = context.read<CategoriesCubit>();
        final allCategories = state.categories?.data ?? [];

        // Filter only child categories (categories with parentId != null)
        final childCategories = allCategories
            .where((category) => category.parentId != null)
            .toList();

        if (childCategories.isEmpty) {
          return const SizedBox.shrink();
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomText(
                text: 'categories'.tr(),
                fontWeight: FontWeight.w800,
                fontSize: 20.sp,
              ),
            ),
            12.ph,
            SizedBox(
              height: 50,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(childCategories.length, (index) {
                    final category = childCategories[index];
                    final isSelected = state.selectedIndicesDetails.contains(
                      allCategories.indexOf(category),
                    );

                    return GestureDetector(
                      onTap: () {
                        final originalIndex = allCategories.indexOf(category);
                        cubit.toggleDetail(originalIndex, category.id ?? 0);
                        context.read<LiveStreamsCubit>().fetchLiveStreams(
                              isRefresh: true,
                              categoryIds: cubit.state.selectedDetailIds,
                            );
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          left: index == 0 ? 16.w : 12.w,
                        ),
                        decoration: BoxDecoration(
                          color: isSelected ? AppColors.primaryColor : null,
                          borderRadius: BorderRadius.circular(8.r),
                          border: isSelected
                              ? Border.all(
                                  width: 0.1, color: Colors.transparent)
                              : Border.all(color: AppColors.gray, width: 2),
                        ),
                        child: Padding(
                          padding: isSelected
                              ? EdgeInsets.all(1.5.r)
                              : EdgeInsets.zero,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12.w,
                              vertical: 8.h,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.gray,
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: CustomText(
                              text: category.name ?? 'Unnamed',
                              fontSize: 12.sp,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
            16.ph,
          ],
        );
      },
    );
  }
}
