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
            children: options.map((item) {
              final index = options.indexOf(item);
              final isSelected = state.selectedIndex == index;

              return Padding(
                padding: EdgeInsets.only(right: 10.w, left: index == 0 ? 16.w : 0),
                child: GestureDetector(
                  onTap: () => cubit.selectCategory(index),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                    decoration: BoxDecoration(
                      color: AppColors.gray,
                      borderRadius: BorderRadius.circular(10.r),
                      border: isSelected
                          ? Border.all(color: AppColors.primaryColor, width: 1)
                          : Border.all(color: Colors.transparent),
                    ),
                    child: Text(
                      item,
                      style: TextStyle(
                        color: AppColors.blackDark,
                        fontWeight: FontWeight.bold,
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
