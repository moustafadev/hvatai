part of '../company.dart';

class StreamsCompanyTab extends StatelessWidget {
  const StreamsCompanyTab({
    super.key,
    required this.userId,
  });

  final int userId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompanyCubit, CompanyState>(
      builder: (context, state) {
        if (state.isLoadingStreams) {
          return const Center(
            child: CircularProgressIndicator(color: AppColors.grey),
          );
        }

        if (state.errorMessageStreams.isNotEmpty) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomText(
                    text: state.errorMessageStreams,
                    fontWeight: FontWeight.w600,
                    color: AppColors.red,
                    textAlign: TextAlign.center,
                  ),
                  16.ph,
                  CustomButton(
                    title: 'retry'.tr(),
                    onPressed: () {
                      context.read<CompanyCubit>().loadCompanyStreams(userId);
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
                      text: 'streams'.tr(),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w800,
                    ),
                    Builder(
                      builder: (builderContext) {
                        return GestureDetector(
                          onTap: () {
                            final RenderBox? renderBox =
                                builderContext.findRenderObject() as RenderBox?;
                            if (renderBox != null) {
                              CompanyFilterDialog.showStreamsFilter(
                                context,
                                renderBox,
                                userId,
                              );
                            }
                          },
                          child: SvgPicture.asset(
                            Assets.assetsIconsFilter,
                            width: 24.w,
                            height: 24.h,
                          ),
                        );
                      },
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
                    liveCardBuilder: (context, stream) {
                      final categoryName = stream.categories?.isNotEmpty == true
                          ? stream.categories!.first.name ?? ''
                          : '';

                      return GestureDetector(
                        onTap: () async {
                          final streamId = stream.id;
                          if (streamId == null) return;

                          if (stream.status == 'live') {
                            // Call join_stream_usecase first
                            final joinStreamUsecase =
                                locator<JoinStreamUsecase>();
                            final result = await joinStreamUsecase(streamId);

                            result.fold(
                              (error) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Ошибка подключения: $error'),
                                    backgroundColor: Colors.red,
                                  ),
                                );
                              },
                              (joinResponse) {
                                // Navigate to viewer stream screen with joinData
                                context.push(
                                  AppRoutes.liveStreamViewer,
                                  extra: {
                                    'streamDataModel': stream,
                                    'joinData': joinResponse.data,
                                  },
                                );
                              },
                            );
                          } else if (stream.status == 'ended') {
                            // Navigate to ended stream screen
                            context.push(
                              AppRoutes.endedStreamViewer,
                              extra: {
                                'stream': stream,
                              },
                            );
                          }
                        },
                        child: CustomLiveVideoCard(
                          stream: stream,
                          categoryName: categoryName,
                        ),
                      );
                    },
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
