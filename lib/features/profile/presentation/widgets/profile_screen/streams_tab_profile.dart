part of '../../profile.dart';

class StreamsTabProfile extends StatelessWidget {
  const StreamsTabProfile({super.key});

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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'Стримы',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w800,
                    ),
                    BlocBuilder<ProfileCubit, ProfileState>(
                      builder: (context, profileState) {
                        return GestureDetector(
                          onTap: () {
                            context.push(AppRoutes.addStream);
                          },
                          child: SvgPicture.asset(
                            Assets.assetsIconsAddCircle,
                            width: 24,
                            height: 24,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            if (streams.isEmpty)
              SliverFillRemaining(
                hasScrollBody: false,
                child: const Center(
                  child: CustomText(
                    text: 'Пока нет стримов',
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
                      return GestureDetector(
                        onTap: () {
                          if (stream.status == 'ended') {
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
