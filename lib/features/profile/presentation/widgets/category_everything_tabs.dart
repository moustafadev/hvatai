part of '../profile.dart';

class CategoryEverythingTabs extends StatelessWidget {
  final int selectedIndex;
  final void Function(int) onSelect;

  const CategoryEverythingTabs({
    super.key,
    required this.selectedIndex,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final categories = [
      "All".tr(),
      "Marketplaces".tr(),
      "Events".tr(),
      "Groups".tr(),
      "Users".tr(),
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
