part of '../home.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<LiveStreamModel> dummyLiveStreams = [
    LiveStreamModel(
      price: 'Starting price 87 ₽',
      title: 'Vintage Levis 501 Jeans',
      adminName: 'company_name',
      liveImage: 'your_image_url_or_base64_here',
      category: 'Category 1',
      isBlocked: false,
      channelId: '1',
      adminPhoto: 'your_photo_url',
      viewsCount: 86,
      description: 'Women\'s vintage clothing',
      adminId: '1',
      selectedProductImage: 'your_product_image_url',
      unblockRequested: false,
      unblockRequestReason: '',
    ),
    LiveStreamModel(
      price: 'Starting price 87 ₽',
      title: 'Vintage Levis 501 Jeans',
      adminName: 'company_name',
      liveImage: 'your_image_url_or_base64_here',
      category: 'Category 1',
      isBlocked: false,
      channelId: '1',
      adminPhoto: 'your_photo_url',
      viewsCount: 86,
      description: 'Women\'s vintage clothing',
      adminId: '1',
      selectedProductImage: 'your_product_image_url',
      unblockRequested: false,
      unblockRequestReason: '',
    ),
    LiveStreamModel(
      price: 'Starting price 87 ₽',
      title: 'Vintage Levis 501 Jeans',
      adminName: 'company_name',
      liveImage: 'your_image_url_or_base64_here',
      category: 'Category 1',
      isBlocked: false,
      channelId: '1',
      adminPhoto: 'your_photo_url',
      viewsCount: 86,
      description: 'Women\'s vintage clothing',
      adminId: '1',
      selectedProductImage: 'your_product_image_url',
      unblockRequested: false,
      unblockRequestReason: '',
    ),
    LiveStreamModel(
      price: 'Starting price 87 ₽',
      title: 'Vintage Levis 501 Jeans',
      adminName: 'company_name',
      liveImage: 'your_image_url_or_base64_here',
      category: 'Category 1',
      isBlocked: false,
      channelId: '1',
      adminPhoto: 'your_photo_url',
      viewsCount: 86,
      description: 'Women\'s vintage clothing',
      adminId: '1',
      selectedProductImage: 'your_product_image_url',
      unblockRequested: false,
      unblockRequestReason: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.background,
      body: BlocProvider(
        create: (_) => locator<CategoryTabsCubit>()..fetchCategories(),
        child: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                10.ph,
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TopBarWidget(),
                ),
                16.ph,
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
                    liveStreams: dummyLiveStreams,
                    currentUserId: '',
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
