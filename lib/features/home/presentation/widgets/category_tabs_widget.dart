part of '../home.dart';

class CategoryTabsWidget extends StatelessWidget {
  const CategoryTabsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      builder: (context, state) {
        final subCats = state.availableSubcategories?.data ?? [];
        if (subCats.isEmpty) return const SizedBox.shrink();

        return HorizontalTabs<CategoryData>(
          items: subCats,
          topPadding: 16,
          selectedIds: state.selectedSubcategoryIds,
          getId: (c) => c.id ?? 0,
          getTitle: (c) => c.name ?? 'Unnamed',
          onTap: (cat) {
            final cubit = context.read<CategoriesCubit>();
            cubit.toggleSubcategory(cat.id ?? 0);

            context.read<LiveStreamsCubit>().fetchLiveStreams(
              isRefresh: true,
              categoryIds: [
                ...cubit.state.selectedFavoriteCategoryIds,
                ...cubit.state.selectedSubcategoryIds
              ],
            );
          },
        );
      },
    );
  }
}
