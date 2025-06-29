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
                body: SafeArea(
                  bottom: false,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TopBarSearchWidget(),
                        const SizedBox(height: 18),
                        const SubscribeElectronics(),
                        const SizedBox(height: 18),
                        Expanded(
                          child: Column(
                            children: [
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
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
