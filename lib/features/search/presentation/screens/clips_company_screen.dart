part of '../search.dart';

class ClipsCompanyScreen extends StatelessWidget {
  const ClipsCompanyScreen({
    super.key,
    this.userId,
  });

  final int? userId;

  @override
  Widget build(BuildContext context) {
    if (userId == null) {
      return Scaffold(
        backgroundColor: AppColors.lightGreyBackground,
        body: Center(
          child: CustomText(
            text: 'userIdRequired'.tr(),
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.red,
          ),
        ),
      );
    }

    return BlocProvider(
      create: (_) => locator<CompanyStreamsCubit>()..loadCompanyStreams(userId!),
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: BlocBuilder<CompanyStreamsCubit, CompanyStreamsState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(color: AppColors.grey),
              );
            }

            if (state.errorMessage.isNotEmpty) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: state.errorMessage,
                        fontWeight: FontWeight.w600,
                        color: AppColors.red,
                        textAlign: TextAlign.center,
                      ),
                      16.ph,
                      CustomButton(
                        title: 'retry'.tr(),
                        onPressed: () {
                          context
                              .read<CompanyStreamsCubit>()
                              .loadCompanyStreams(userId!);
                        },
                      ),
                    ],
                  ),
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
                            text: 'clips'.tr(),
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
                                final firstProduct = stream.streamProducts
                                            ?.isNotEmpty ==
                                        true
                                    ? stream.streamProducts!.first
                                    : null;
                                final startingPrice =
                                    firstProduct?.startingPrice ?? '0';
                                final product = firstProduct?.product;
                                final categoryName =
                                    stream.categories?.isNotEmpty == true
                                        ? stream.categories!.first.name ?? ''
                                        : '';

                                return GestureDetector(
                                  onTap: () {
                                    // Navigate to stream details or join stream
                                    if (stream.status == 'live' &&
                                        stream.id != null) {
                                      // Navigate to broadcaster stream screen
                                      context.push(
                                        AppRoutes.liveStreamViewer,
                                        extra: {
                                          'streamId': stream.id!,
                                          'stream': stream,
                                        },
                                      );
                                    }
                                  },
                                  child: CustomLiveVideoCard(
                                    // price: 'Стартовая цена $startingPrice Р',
                                    price:"",
                                    title: product?.name ?? stream.title ?? '',
                                    adminName:
                                        stream.user?.name ?? 'company_name',
                                    adminImage: stream.user?.image ?? '',
                                    viewsCount: stream.viewerCount ?? 0,
                                    description: categoryName,
                                    liveImage: stream.thumbnailUrl ??
                                        stream.recordUrl ??
                                        '',
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
      ),
    );
  }
}
