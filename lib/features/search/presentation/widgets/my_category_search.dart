part of '../search.dart';

class MyCategorySearch extends StatelessWidget {
  const MyCategorySearch({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        final categories = state.categories;

        if (categories.isEmpty) {
          return const SizedBox.shrink();
        }

        final filteredCategories = categories
            .where((category) => (category.name?.trim() ?? '').isNotEmpty)
            .toList();

        if (filteredCategories.isEmpty) {
          return const SizedBox.shrink();
        }

        return SizedBox(
          height: 150,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                categories.length,
                (index) {
                  final category = categories[index];
                  return Padding(
                    padding: EdgeInsets.only(left: index == 0 ? 16 : 12),
                    child: SizedBox(
                      width: 120,
                      height: 150,
                      child: CategoryCard(
                        category: category,
                        isSelected: false,
                        onTap: () {
                          context
                              .read<SearchCubit>()
                              .selectCategoryById(category);
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
