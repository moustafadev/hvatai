part of 'customs.dart';

class CustomCategoryTabs extends StatelessWidget {
  final List<String> categories;
  final int selectedIndex;
  final ValueChanged<int> onCategorySelected;

  const CustomCategoryTabs({
    super.key,
    required this.categories,
    required this.selectedIndex,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(categories.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CustomGradiantTabButton(
              text: categories[index],
              isSelected: selectedIndex == index,
              onPressed: () => onCategorySelected(index),
            ),
          );
        }),
      ),
    );
  }
}
