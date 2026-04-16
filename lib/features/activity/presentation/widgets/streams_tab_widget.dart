part of '../activity.dart';

class StreamsTabWidget extends StatelessWidget {
  const StreamsTabWidget({super.key});

  Future<void> _confirmStartStream(
    BuildContext context, {
    required dynamic stream,
  }) async {
    final scheduledAt = stream.scheduledAt;
    final now = DateTime.now();

    final message = (scheduledAt != null && now.isBefore(scheduledAt))
        ? 'Вы уверены, что хотите начать стрим раньше запланированного времени?'
        : 'Вы уверены, что хотите начать стрим?';

    final shouldStart = await showConfirmDialog(
      context,
      title: 'Начать стрим',
      content: message,
      cancelText: 'Отмена',
      confirmText: 'Ок',
    );

    if (shouldStart && context.mounted) {
      context.push(
        AppRoutes.liveStreamBroadcaster,
        extra: {
          'streamDataModel': stream,
        },
      );
    }
  }

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
                if (stream.status == 'ended') {
                  context.push(
                    AppRoutes.endedStreamViewer,
                    extra: {
                      'stream': stream,
                    },
                  );
                  return;
                }

                final isScheduled = stream.scheduledAt != null &&
                    stream.status != 'live' &&
                    stream.status != 'ended';

                if (isScheduled) {
                  _confirmStartStream(context, stream: stream);
                }
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
