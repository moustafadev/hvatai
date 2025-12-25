part of '../home.dart';

class MyCategory extends StatelessWidget {
  const MyCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CategoriesCubit, CategoriesState>(
      listener: (context, state) {
        if (state.error?.isNotEmpty == true) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error!)),
          );
        }
      },
      builder: (context, state) {
        final interests = state.categories;

        if (interests == null ||
            interests.data == null ||
            interests.data!.isEmpty) {
          return SizedBox();
        }

        return Column(
          children: [
            if (state.isLoading)
              const LinearProgressIndicator(color: Colors.blue),
            SizedBox(
              height: 150,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(interests.data!.length, (index) {
                    final category = interests.data![index];
                    final isSelected = state.selectedIndices.contains(index);
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
                            // If clicking on a favorite category, filter by it
                            if (!isSelected) {
                              cubit.selectFavCategory(category.id);
                            } else {
                              cubit.clearFavCategoryFilter();
                            }
                            cubit.toggleInterest(index, category.id ?? 0);
                            context.read<LiveStreamsCubit>().fetchLiveStreams(
                                  isRefresh: true,
                                  categoryIds: cubit.state.selectedCategoryIds,
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
