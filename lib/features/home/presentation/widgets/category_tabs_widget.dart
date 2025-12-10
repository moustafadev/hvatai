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
        final interests = state.filteredCategories;

        if (interests == null || interests.data == null) {
          return Center(
              child: CircularProgressIndicator(
            color: AppColors.grey,
          ));
        }

        if (interests.data!.isEmpty) {
          return Center(child: CustomText(text: 'noCategories'.tr()));
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
