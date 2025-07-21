part of '../home.dart';

class CategoryTabsWidget extends StatelessWidget {
  final Function(dynamic) onCategorySelected;

  const CategoryTabsWidget(
      {required this.onCategorySelected,
      super.key,
      required this.detailedInterestOptions});

  final List<String> detailedInterestOptions;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CategoryTabsCubit>();

    return BlocBuilder<CategoryTabsCubit, CategoryTabsState>(
      builder: (context, state) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: detailedInterestOptions.map((item) {
              final index = detailedInterestOptions.indexOf(item);
              final isSelected = state.selectedIndex == index;

              return Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: GestureDetector(
                  onTap: () {
                    cubit.selectCategory(index);
                    onCategorySelected(item);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.gray,
                      borderRadius: BorderRadius.circular(10.r),
                      border: isSelected
                          ? Border.all(color: AppColors.primaryColor, width: 1)
                          : Border.all(color: Colors.transparent),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 6),
                        child: CustomText(
                          text: item,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
