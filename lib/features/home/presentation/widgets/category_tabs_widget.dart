part of '../home.dart';

class CategoryTabsWidget extends StatelessWidget {
  const CategoryTabsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      builder: (context, state) {
        final cubit = context.read<CategoriesCubit>();

        // If a favorite category is selected, show filtered subcategories
        // Otherwise, show all filtered categories
        final interests = state.selectedFavCategoryId != null
            ? state.filteredSubCategories
            : state.filteredCategories;

        if (interests == null ||
            interests.data == null ||
            interests.data!.isEmpty) {
          return SizedBox();
        }

        // If showing filtered subcategories, add a title
        if (state.selectedFavCategoryId != null) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(top: 16.0),
                child: Row(
                  children: List.generate(interests.data!.length, (index) {
                    final category = interests.data![index];
                    // Find the original index in filteredCategories
                    final allCategories = state.filteredCategories?.data ?? [];
                    final originalIndex = allCategories.indexWhere(
                      (cat) => cat.id == category.id,
                    );
                    final isSelected = originalIndex != -1 &&
                        state.selectedIndicesDetails.contains(originalIndex);

                    return GestureDetector(
                      onTap: () {
                        if (originalIndex != -1) {
                          cubit.toggleDetail(originalIndex, category.id ?? 0);
                        }
                        context.read<LiveStreamsCubit>().fetchLiveStreams(
                              isRefresh: true,
                              categoryIds: cubit.state.selectedDetailIds,
                            );
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: index == 0 ? 16.w : 12.w),
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
            ],
          );
        }

        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(interests.data!.length, (index) {
              final category = interests.data![index];
              final isSelected = state.selectedIndicesDetails.contains(index);

              return GestureDetector(
                onTap: () {
                  cubit.toggleDetail(index, category.id ?? 0);
                  context.read<LiveStreamsCubit>().fetchLiveStreams(
                      isRefresh: true,
                      categoryIds: cubit.state.selectedDetailIds);
                },
                child: Container(
                  margin: EdgeInsets.only(left: index == 0 ? 16.w : 12.w),
                  decoration: BoxDecoration(
                    color: isSelected ? AppColors.primaryColor : null,
                    borderRadius: BorderRadius.circular(8.r),
                    border: isSelected
                        ? Border.all(width: 0.1, color: Colors.transparent)
                        : Border.all(color: AppColors.gray, width: 2),
                  ),
                  child: Padding(
                    padding:
                        isSelected ? EdgeInsets.all(1.5.r) : EdgeInsets.zero,
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
        );
      },
    );
  }
}
