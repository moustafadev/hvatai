part of '../home.dart';

class AllChildCategoriesWidget extends StatelessWidget {
  const AllChildCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      builder: (context, state) {
        if (state.isLoading) return const SizedBox.shrink();

        final allCategories = state.allCategories?.data ?? [];

        final children = <CategoryChild>[];
        for (final cat in allCategories) {
          if (cat.children != null) {
            children.addAll(cat.children!);
          }
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HorizontalTabs<CategoryChild>(
              getId: (child) => child.id ?? 0,
              getTitle: (child) => child.name ?? '',
              items: children,
              selectedIds: state.selectedSubcategoryIds,
              onTap: (child) {
                final cubit = context.read<CategoriesCubit>();
                cubit.toggleSubcategory(child.id ?? 0);
                context.read<LiveStreamsCubit>().fetchLiveStreams(
                  isRefresh: true,
                  categoryIds: [
                    ...cubit.state.selectedFavoriteCategoryIds,
                    ...cubit.state.selectedSubcategoryIds
                  ],
                );
              },
            ),
            16.ph,
          ],
        );
      },
    );
  }
}
