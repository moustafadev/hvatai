part of '../home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  List<LiveStreamModel> generateDummyLiveStreams(int count) {
    return List.generate(count, (_) {
      return LiveStreamModel(
        price: 'Starting price 12 ₽',
        title: 'Lorem ipsum dolor sit amet consectetur adipiscing',
        adminName: 'company_name',
        liveImage: 'base64_image_string_here',
        category: 'Category 1',
        isBlocked: false,
        channelId: '1',
        adminPhoto: 'base64_image_string_here',
        viewsCount: 86,
        description: 'Lorem ipsum dolor sit amet consectetur adipiscing',
        adminId: '1',
        selectedProductImage: 'base64_image_string_here',
        unblockRequested: false,
        unblockRequestReason: '',
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.lightGreyBackground,
      body: BlocProvider(
        create: (_) => locator<CategoryTabsCubit>()
          ..fetchCategories()
          ..fetchLiveStreams(),
        child: SafeArea(
          bottom: false,
          child: BlocBuilder<CategoryTabsCubit, CategoryTabsState>(
            builder: (context, state) {
              if (state.isLoading) {
                return Scaffold(
                  body: const Center(
                      child: CircularProgressIndicator(
                    color: AppColors.grey,
                  )),
                );
              }
              return Column(
                children: [
                  10.ph,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: TopBarWidget(
                      onGiftTap: () => context.push(AppRoutes.awardsGift),
                    ),
                  ),
                  16.ph,
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: CategoryTabsWidget(
                              onCategorySelected: (category) {
                                if (category != null) {
                                  context
                                      .read<CategoryTabsCubit>()
                                      .selectCategory(category);
                                }
                              },
                              detailedInterestOptions: const [
                                'Category 1',
                                'Category 2',
                                'Category 3',
                                'Category 4',
                                'Category 5',
                                'Category 6',
                                'Category 7',
                                'Category 8',
                                'Category 9',
                                'Category 10',
                              ],
                            ),
                          ),
                          10.ph,
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                            child: TitleCategoriesForYou(),
                          ),
                          12.ph,
                          const Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: MyCategory(),
                          ),
                          12.ph,
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: LiveVideosWidget(
                              liveStreams: state.liveStreams,
                              currentUserId: '',
                            ),
                          ),
                          100.ph
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
