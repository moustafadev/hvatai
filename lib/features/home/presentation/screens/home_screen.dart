part of '../home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
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
      backgroundColor: AppColors.background,
      body: BlocProvider(
        create: (_) => locator<CategoryTabsCubit>()..fetchCategories(),
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              10.ph,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: TopBarWidget(),
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
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: LiveVideosWidget(
                          liveStreams: generateDummyLiveStreams(10),
                          currentUserId: '',
                        ),
                      ),
                      100.ph
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
