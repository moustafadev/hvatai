part of '../home.dart';
class HomeContent extends StatelessWidget {
  const HomeContent({super.key, required this.liveStreamsState});

  final LiveStreamsState liveStreamsState;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        16.ph,
        BlocBuilder<CategoriesCubit, CategoriesState>(
          builder: (context, categoriesState) {
            final hasSelectedFavCategory =
                categoriesState.selectedFavoriteCategoryIds.isNotEmpty;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (!hasSelectedFavCategory) ...[
                  const AllChildCategoriesWidget(),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: TitleCategoriesForYou(),
                  ),
                  12.ph,
                  MyCategory(),
                ],
                if (hasSelectedFavCategory) ...[
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: TitleCategoriesForYou(),
                  ),
                  12.ph,
                  MyCategory(),
                  CategoryTabsWidget(),
                ],
                24.ph,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: LiveVideosWidget(
                      liveStreams: liveStreamsState.liveStreams),
                ),
                120.ph,
              ],
            );
          },
        ),
      ],
    );
  }
}