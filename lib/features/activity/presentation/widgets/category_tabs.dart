part of '../activity.dart';

class CategoryTabsRates extends StatelessWidget {
  final int selectedIndex;
  final void Function(int) onSelect;

  const CategoryTabsRates({
    super.key,
    required this.selectedIndex,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final categories = [
      "All".tr(),
      "You are in the lead".tr(),
      "The bid has been outbid".tr(),
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(categories.length, (index) {
          return Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: CustomGradiantTabButton(
              text: categories[index],
              isSelected: selectedIndex == index,
              onPressed: () => onSelect(index),
            ),
          );
        }),
      ),
    );
  }
}
