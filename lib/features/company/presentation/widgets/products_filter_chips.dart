part of '../company.dart';

class ProductsFilterChips extends StatelessWidget {
  const ProductsFilterChips({
    super.key,
    required this.selectedIndex,
    required this.onSelect,
  });

  final int selectedIndex;
  final ValueChanged<int> onSelect;

  @override
  Widget build(BuildContext context) {
    final categories = [
      'all'.tr(),
      'active'.tr(),
      'sold'.tr(),
      'fix'.tr(),
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
