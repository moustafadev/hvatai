part of '../activity.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});
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
    return BlocBuilder<ActivityCubit, ActivityState>(builder: (context, state) {
      final cubit = context.read<ActivityCubit>();
      return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.lightGreyBackground,
            appBar: AppBar(
              leading: GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.blackDark,
                ),
              ),
              backgroundColor: AppColors.lightGreyBackground,
              elevation: 0,
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  8.ph,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: CustomText(
                      text: 'favorites'.tr(),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  12.ph,
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: CustomCategoryTabs(
                      categories: const ["All", "Streams", "Goods", "Tags"],
                      selectedIndex: state.selectedCategoryIndex,
                      onCategorySelected: cubit.changeCategory,
                    ),
                  ),
                  12.ph,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'streams'.tr(),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                        ),
                        12.ph,
                        FavLiveVideoWidget(
                          liveStreams: generateDummyLiveStreams(3),
                          currentUserId: '',
                        ),
                        20.ph,
                        CustomText(
                            text: 'goods'.tr(),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700),
                        9.ph,
                        ...state.products.map(
                          (item) => AuctionCard(
                            product: item,
                            selectedCategoryIndex: state.selectedCategoryIndex,
                            currentUserId: '',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      );
    });
  }
}
