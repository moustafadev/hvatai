part of '../stream.dart';

class MyStreamsScreen extends StatelessWidget {
  const MyStreamsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<MyStreamsCubit>()..loadMyStreams(),
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: BlocBuilder<MyStreamsCubit, MyStreamsState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(color: AppColors.grey),
              );
            }

            if (state.errorMessage.isNotEmpty) {
              return Center(
                child: CustomText(
                  text: state.errorMessage,
                  fontWeight: FontWeight.w600,
                  color: AppColors.red,
                ),
              );
            }

            return SafeArea(
              child: Column(
                children: [
                  // Header with back arrow, title, and filter
                  Padding(
                    padding: EdgeInsets.only(
                      top: 12.h,
                      bottom: 16.h,
                      left: 16.w,
                      right: 16.w,
                    ),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => context.pop(),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: AppColors.blackColorIcon,
                            size: 20.sp,
                          ),
                        ),
                        12.pw,
                        Expanded(
                          child: CustomText(
                            text: 'stream'.tr(),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Show filter options if needed
                          },
                          child: Image.asset(
                            Assets.assetsIconsTune,
                            width: 24.w,
                            height: 24.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Streams grid
                  Expanded(
                    child: state.streams.isEmpty
                        ? Center(
                            child: CustomText(
                              text: 'noStreams'.tr(),
                              fontSize: 14.sp,
                              color: AppColors.blackTransparent40,
                            ),
                          )
                        : SingleChildScrollView(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: ReusableLiveVideosGrid<StreamDataModel>(
                              items: state.streams,
                              filter: (stream) => true,
                              isBlocked: (stream) => false,
                              isOwner: (stream) => false,
                              liveCardBuilder: (context, stream) {
                                final firstProduct = stream.streamProducts?.isNotEmpty == true
                                    ? stream.streamProducts!.first
                                    : null;
                                final product = firstProduct?.product;
                                final categoryName = stream.categories?.isNotEmpty == true
                                    ? stream.categories!.first.name ?? ''
                                    : '';
                                
                                return GestureDetector(
                                  onTap: () {
                                    // Navigate to stream details or join stream
                                    if (stream.status == 'live' && stream.id != null) {
                                      // Navigate to broadcaster stream screen
                                      context.push(
                                        AppRoutes.liveStreamBroadcaster,
                                        extra: {
                                          'streamId': stream.id!,
                                          'stream': stream,
                                        },
                                      );
                                    }
                                  },
                                  child: CustomLiveVideoCard(
                                    // price: 'Стартовая цена $startingPrice Р',
                                    price: "",
                                    title: product?.name ?? stream.title ?? '',
                                    adminName: stream.user?.name ?? 'company_name',
                                    adminImage: stream.user?.image ?? '',
                                    viewsCount: stream.viewerCount ?? 0,
                                    description: categoryName,
                                    liveImage: stream.thumbnailUrl ?? 
                                        stream.recordUrl ?? '',
                                    latestThumbnailUrl: stream.latestThumbnailUrl,
                                    latestGifUrl: stream.latestGifUrl,
                                  ),
                                );
                              },
                            ),
                          ),
                  ),
                ],
              ),
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: GestureDetector(
          onTap: () => context.push(AppRoutes.addStream),
          child: Container(
            margin: const EdgeInsets.only(bottom: 50),
            height: 50.h,
            width: 50.w,
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.add_circle_outline,
              size: 30,
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}

