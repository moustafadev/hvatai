part of '../activity.dart';

class FeaturedActivityWidget extends StatelessWidget {
  const FeaturedActivityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<FeaturedActivityCubit>(),
      child: BlocBuilder<FeaturedActivityCubit, FeaturedActivityState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12.h),
                  CategoryTabs(
                    categories: const ["All", "Streams", "Goods", "Tags"],
                    selectedIndex: state.selectedCategoryIndex,
                    onCategorySelected: (index) {
                      context
                          .read<FeaturedActivityCubit>()
                          .changeCategory(index);
                    },
                  ),
                  Builder(
                    builder: (context) {
                      switch ([
                        "All",
                        "Streams",
                        "Goods",
                        "Tags"
                      ][state.selectedCategoryIndex]) {
                        case "Streams":
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SectionTitle(title: "Streams"),
                              LiveVideosWidget(
                                liveStreams: state.liveStreams,
                                currentUserId: '1',
                              ),
                            ],
                          );
                        case "Goods":
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SectionTitle(title: "Goods"),
                              ...state.products.map(
                                (item) => Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 12.w),
                                  child: AuctionCard(
                                    product: item,
                                    selectedCategoryIndex:
                                        state.selectedCategoryIndex,
                                    currentUserId: '',
                                  ),
                                ),
                              ),
                            ],
                          );
                        default:
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SectionTitle(title: "Streams"),
                              LiveVideosWidget(
                                liveStreams: state.liveStreams,
                                currentUserId: '1',
                              ),
                              const SectionTitle(title: "Goods"),
                              ...state.products.map(
                                (item) => Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 12.w),
                                  child: AuctionCard(
                                    product: item,
                                    selectedCategoryIndex:
                                        state.selectedCategoryIndex,
                                    currentUserId: '',
                                  ),
                                ),
                              ),
                            ],
                          );
                      }
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class CategoryTabs extends StatelessWidget {
  final List<String> categories;
  final int selectedIndex;
  final ValueChanged<int> onCategorySelected;

  const CategoryTabs({
    super.key,
    required this.categories,
    required this.selectedIndex,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
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
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
    );
  }
}
