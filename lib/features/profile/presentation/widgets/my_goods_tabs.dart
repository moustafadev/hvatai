part of '../profile.dart';

class MyGoodsTabs extends StatelessWidget {
  final int selectedIndex;
  final void Function(int) onSelect;

  const MyGoodsTabs({
    super.key,
    required this.selectedIndex,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final categories = [
      "All".tr(),
      "Active".tr(),
      "Sold".tr(),
      "Fix".tr(),
      "Archived".tr(),
      "Deleted".tr(),
      "Blocked".tr(),
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
