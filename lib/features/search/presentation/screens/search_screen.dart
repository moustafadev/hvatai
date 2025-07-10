part of '../search.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  List<SearchLiveStreamModel> generateDummyLiveStreams(int count) {
    return List.generate(count, (_) {
      return SearchLiveStreamModel(
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
    return DefaultTabController(
      length: 3,
      child: BlocProvider(
        create: (_) => locator<SearchTabsCubit>()..fetchCategories(),
        child: BlocConsumer<SearchTabsCubit, SearchTabsState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
              backgroundColor: AppColors.background,
              body: Column(
                children: [
                  16.ph,
                  TopBarSearchWidget(),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            16.ph,
                            ButtonTabBarSearch(onCategorySelected: (category) {
                              if (category != null) {
                                context
                                    .read<SearchTabsCubit>()
                                    .selectCategory(category);
                              }
                            }),
                            16.ph,
                            CustomText(
                              text: 'recentlySearched'.tr(),
                              fontFamily: "Manrope",
                              fontWeight: FontWeight.w800,
                              fontSize: 20.sp,
                            ),
                            12.ph,
                            SearchRecently(),
                            24.ph,
                            CustomText(
                              text: 'category'.tr(),
                              fontFamily: "Manrope",
                              fontWeight: FontWeight.w800,
                              fontSize: 20.sp,
                            ),
                            12.ph,
                            MyCategorySearch(),
                            24.ph,
                            CustomText(
                              text: 'goods'.tr(),
                              fontFamily: "Manrope",
                              fontWeight: FontWeight.w800,
                              fontSize: 20.sp,
                            ),
                            12.ph,
                            AuctionSearchWidget(),
                            24.ph,
                            CustomText(
                              text: 'streams'.tr(),
                              fontFamily: "Manrope",
                              fontWeight: FontWeight.w800,
                              fontSize: 20.sp,
                            ),
                            10.ph,
                            SearchLiveVideoWidget(
                              liveStreams: generateDummyLiveStreams(4),
                              currentUserId: '',
                            ),
                            24.ph,
                            CustomText(
                              text: 'users'.tr(),
                              fontFamily: "Manrope",
                              fontWeight: FontWeight.w800,
                              fontSize: 20.sp,
                            ),
                            12.ph,
                            UsersSearchWidget(),
                          ],
                        ),
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
