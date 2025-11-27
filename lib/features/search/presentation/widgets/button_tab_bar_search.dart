part of '../search.dart';

class ButtonTabBarSearch extends StatelessWidget {
  final Function(dynamic) onCategorySelected;

  const ButtonTabBarSearch({required this.onCategorySelected, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        final cubit = context.read<SearchCubit>();
        final options = state.categories;

        if (options.isEmpty) {
          return const SizedBox.shrink();
        }

        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(options.length, (index) {
              final item = options[index];
              final isSelected = state.selectedIndex == index;

              return GestureDetector(
                onTap: () => cubit.selectCategory(index),
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
                    padding: isSelected ? EdgeInsets.all(1.5.r) : EdgeInsets.zero,
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
                        text: item,
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
