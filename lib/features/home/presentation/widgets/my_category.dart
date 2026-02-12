part of '../home.dart';

class MyCategory extends StatelessWidget {
  const MyCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      builder: (context, state) {
        final favoriteCategories = state.favoriteCategories;

        if (favoriteCategories == null ||
            favoriteCategories.data == null ||
            favoriteCategories.data!.isEmpty) {
          return SizedBox();
        }

        return Column(
          children: [
            if (state.isLoading)
              const LinearProgressIndicator(color: Colors.blue),
            SizedBox(
              height: 141,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:
                      List.generate(favoriteCategories.data!.length, (index) {
                    final category = favoriteCategories.data![index];
                    final catId = category.id ?? 0;

                    final isSelected =
                        state.selectedFavoriteCategoryIds.contains(catId);

                    final cubit = context.read<CategoriesCubit>();
                    return Padding(
                      padding: EdgeInsets.only(left: index == 0 ? 16 : 12),
                      child: SizedBox(
                        width: 120,
                        height: 141,
                        child: CategoryCard(
                          category: category,
                          isSelected: isSelected,
                          onTap: () {
                            cubit.toggleFavoriteCategory(
                                categoryId: category.id ?? 0);
                            final liveStreamsCubit =
                                context.read<LiveStreamsCubit>();
                            liveStreamsCubit.fetchLiveStreams(
                              isRefresh: true,
                              categoryIds: [
                                ...cubit.state.selectedFavoriteCategoryIds,
                                ...cubit.state.selectedSubcategoryIds
                              ],
                            );
                          },
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
