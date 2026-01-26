part of '../company.dart';

class ClipsCompanyScreen extends StatelessWidget {
  const ClipsCompanyScreen({
    super.key,
    this.userId,
  });

  final int? userId;

  @override
  Widget build(BuildContext context) {
    if (userId == null) {
      return Center(
        child: CustomText(
          text: 'userIdRequired'.tr(),
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.red,
        ),
      );
    }

    return BlocProvider(
      create: (_) =>
          locator<CompanyStreamsCubit>()..loadCompanyStreams(userId!),
      child: BlocBuilder<CompanyStreamsCubit, CompanyStreamsState>(
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

          return CustomScrollView(
            slivers: [
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                sliver: SliverToBoxAdapter(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'clips'.tr(),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w800,
                      ),
                      GestureDetector(
                        onTap: () {
                          CompanyFilterDialog.showClipsFilter(context);
                        },
                        child: SvgPicture.asset(
                          Assets.assetsIconsFilter,
                          width: 24.w,
                          height: 24.h,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (state.streams.isEmpty)
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(
                    child: CustomText(
                      text: 'noStreams'.tr(),
                      fontSize: 14.sp,
                      color: AppColors.blackTransparent40,
                    ),
                  ),
                )
              else
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  sliver: SliverToBoxAdapter(
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
                        final product = firstProduct?.product;
                        final categoryName =
                            stream.categories?.isNotEmpty == true
                                ? stream.categories!.first.name ?? ''
                                : '';

                        return GestureDetector(
                          onTap: () {
                            if (stream.status == 'live' &&
                                stream.id != null) {
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
                            price: "",
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
          );
        },
      ),
    );
  }
}
