part of '../search.dart';

class ClipsCompanyScreen extends StatelessWidget {
  const ClipsCompanyScreen({super.key});
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
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: AppColors.lightGreyBackground,
        body: CustomScrollView(slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                10.ph,
                TopBarSearchWidget(
                  isSearch: false,
                  image: Assets.assetsIconsTune,
                ),
                24.ph,
                CustomText(
                  text: 'clips'.tr(),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w800,
                ),
                12.ph,
                // LiveVideosWidget(
                //   liveStreams: generateDummyLiveStreams(10),
                //   currentUserId: '',
                // ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
