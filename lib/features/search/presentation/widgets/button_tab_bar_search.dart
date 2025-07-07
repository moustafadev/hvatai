part of '../search.dart';

class ButtonTabBarSearch extends StatelessWidget {
  final Function(dynamic) onCategorySelected;

  const ButtonTabBarSearch({required this.onCategorySelected, super.key});

  static const List<String> detailedInterestOptions = [
    'For you',
    'Art',
    'Business',
    'Health',
    'Music',
    'Politics',
    'Science',
    'Sports',
    'Technology',
    'Travel',
  ];

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SearchTabsCubit>();

    return BlocBuilder<SearchTabsCubit, SearchTabsState>(
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
