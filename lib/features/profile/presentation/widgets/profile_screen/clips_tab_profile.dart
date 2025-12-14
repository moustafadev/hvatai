part of '../../profile.dart';

class ClipsTabProfile extends StatelessWidget {
  const ClipsTabProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyStreamsCubit, MyStreamsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(color: AppColors.grey),
          );
        }
        if (state.errorMessage.isNotEmpty) {
          return Center(
            child: CustomText(text: state.errorMessage),
          );
        }
        final streams = state.streams;

        return CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              sliver: SliverToBoxAdapter(
                child: CustomText(
                  text: 'Клипы',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            if (streams.isEmpty)
              SliverFillRemaining(
                hasScrollBody: false,
                child: const Center(
                  child: CustomText(
                    text: 'Пока нет клипов',
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackTransparent40,
                  ),
                ),
              )
            else
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                sliver: SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 11,
                    mainAxisExtent: 400,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.6,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final stream = streams[index];
                      final firstProduct =
                          stream.streamProducts?.isNotEmpty == true
                              ? stream.streamProducts!.first
                              : null;
                      final product = firstProduct?.product;
                      final categoryName = stream.categories?.isNotEmpty == true
                          ? stream.categories!.first.name ?? ''
                          : '';
                      return CustomLiveVideoCard(
                        price: "",
                        title: product?.name ?? stream.title ?? '',
                        adminName: stream.user?.name ?? 'company_name',
                        adminImage: stream.user?.image ?? '',
                        viewsCount: stream.viewerCount ?? 0,
                        description: categoryName,
                        liveImage:
                            stream.thumbnailUrl ?? stream.recordUrl ?? '',
                        latestThumbnailUrl: stream.latestThumbnailUrl,
                        latestGifUrl: stream.latestGifUrl,
                      );
                    },
                    childCount: streams.length,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
