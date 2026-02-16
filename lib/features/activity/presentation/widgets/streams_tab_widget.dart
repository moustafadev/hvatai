part of '../activity.dart';

class StreamsTabWidget extends StatelessWidget {
  const StreamsTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivityCubit, ActivityState>(
      builder: (context, state) {
        if (state.isLoadingStreams) {
          return const Center(
            child: CustomCircularProgressIndicator(),
          );
        }

        if (state.streamsError.isNotEmpty) {
          return Center(
            child: CustomText(
              text: state.streamsError,
              color: AppColors.hotPink,
            ),
          );
        }

        if (state.streams.isEmpty) {
          return Center(
            child: CustomText(
              text: 'noStreamsYet'.tr(),
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          );
        }

        return GridView.builder(
          padding: EdgeInsets.all(16.w),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 11.w,
            mainAxisSpacing: 12.h,
            mainAxisExtent: 320.h,
            childAspectRatio: 0.6,
          ),
          itemCount: state.streams.length,
          itemBuilder: (context, index) {
            final stream = state.streams[index];

            final categoryName = stream.categories?.isNotEmpty == true
                ? stream.categories!.first.name ?? ''
                : '';

            return GestureDetector(
              onTap: () {
                // if (stream.id != null) {
                //   context.push(
                //     AppRoutes.liveStreamViewer,
                //     extra: {'streamId': stream.id},
                //   );
                // }
              },
              child: CustomLiveVideoCard(
                stream: stream,
                categoryName: categoryName,
              ),
            );
          },
        );
      },
    );
  }
}
