part of '../search.dart';

class MyCategorySearch extends StatelessWidget {
  const MyCategorySearch({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        final categories = state.parentCategories;

        if (categories.isEmpty) {
          return const SizedBox.shrink();
        }

        final filteredCategories = categories
            .where((category) => (category.name?.trim() ?? '').isNotEmpty)
            .toList();

        if (filteredCategories.isEmpty) {
          return const SizedBox.shrink();
        }

        return ReusableCategoryWidget(
          categories: filteredCategories,
          selectedIndices: state.selectedIndices.toList(),
          onTap: (index, key) {},
          // onTap: (index, key) => cubit.toggleInterest(index, key),
        );
      },
    );
  }
}
