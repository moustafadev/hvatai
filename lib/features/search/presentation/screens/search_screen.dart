part of '../search.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  List<LiveStreamModel> generateDummyLiveStreams(int count) {
    return List.generate(count, (_) {
      return LiveStreamModel(
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
    return DefaultTabController(
      length: 3,
      child: BlocProvider(
        create: (_) => locator<SearchTabsCubit>()..fetchCategories(),
        child: BlocConsumer<SearchTabsCubit, SearchTabsState>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = context.read<SearchTabsCubit>();
            return Scaffold(
              backgroundColor: AppColors.gray,
              body: Column(
                children: [
                  5.ph,
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: 111.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5.r,
                        ),
                      ],
                      color: AppColors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16.r),
                        bottomRight: Radius.circular(16.r),
                      ),
                    ),
                    child: const TopBarSearchWidget(),
                  ),

                  // ✅ الحل هنا: Expanded يلتف على الباقي
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          18.ph,
                          const SubscribeElectronics(),
                          18.ph,
                          ButtonTabBarSearch(),
                          16.ph,
                          Expanded(
                            child: IndexedStack(
                              index: state.selectedIndex,
                              children: [
                                LiveVideosWidget(
                                  liveStreams: generateDummyLiveStreams(5),
                                  currentUserId: '34',
                                ),
                                LiveVideosWidget(
                                  liveStreams: generateDummyLiveStreams(1),
                                  currentUserId: '64',
                                ),
                                LiveVideosWidget(
                                  liveStreams: generateDummyLiveStreams(3),
                                  currentUserId: '64',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
