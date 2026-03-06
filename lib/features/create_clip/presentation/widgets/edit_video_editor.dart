part of '../clips.dart';

class EditVideoEditor extends StatelessWidget {
  const EditVideoEditor({super.key, this.videoUrl});
  final String? videoUrl;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateClipCubit, CreateClipState>(
      builder: (context, state) {
        final cubit = context.read<CreateClipCubit>();
        final videoDuration = cubit.videoDuration;
        final videoController = cubit.videoController;

        if (videoDuration == null || videoController == null) {
          return const SizedBox.shrink();
        }

        final trimmedDuration = (state.endValue - state.startValue) / 1000;
        final durationSeconds = trimmedDuration.toInt();

        return Column(
          children: [
            32.ph,
            // Video container with padding and border radius
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 64.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      AspectRatio(
                        aspectRatio: videoController.value.aspectRatio,
                        child: VideoPlayer(videoController),
                      ),
                      // Rewatch icon when video reaches end
                      if (state.hasReachedEnd)
                        Positioned.fill(
                          child: GestureDetector(
                            onTap: () => cubit.rewind(),
                            child: Container(
                              color: Colors.black.withValues(alpha: 0.3),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color:
                                            Colors.white.withValues(alpha: 0.9),
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.replay,
                                        color: Colors.black,
                                        size: 32,
                                      ),
                                    ),
                                    const SizedBox(height: 12),
                                    CustomText(
                                      text: 'Пересмотреть',
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
            // SizedBox 12
            12.ph,
            // Duration text aligned to right with padding 16
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: CustomText(
                  text: 'Длительность: $durationSeconds с',
                  color: Colors.white,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            // SizedBox 24
            24.ph,
            // Custom trim slider with fixed thumbnail count
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  // Slider row with play button
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (state.isPlaying) {
                            cubit.pause();
                          } else {
                            cubit.seekTo(state.startValue);
                            cubit.play();
                          }
                        },
                        child: Container(
                          width: 56,
                          height: 60,
                          decoration: BoxDecoration(
                            color: AppColors.background,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              state.isPlaying
                                  ? Assets.assetsIconsPause
                                  : Assets.assetsIconsPlay,
                              width: 24,
                              height: 24,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: CustomTrimSlider(
                          previewImageUrls: state.previewImages?.data?.images
                              ?.map((e) => e.url)
                              .toList(),
                          isLoading: state.isPreviewLoading,
                          videoDuration: videoDuration,
                          startValue: state.startValue,
                          endValue: state.endValue,
                          onStartChanged: (value) {
                            cubit.updateStartValue(value);
                            cubit.seekTo(value);
                          },
                          onEndChanged: (value) {
                            cubit.updateEndValue(value);
                          },
                          thumbnailCount:
                              state.previewImages?.data?.count ?? 10,
                          thumbnailHeight: 60.0,
                          showTimeDisplay: false,
                          onThumbnailsLoaded: () {
                            cubit.setThumbnailsLoaded(true);
                          },
                        ),
                      ),
                    ],
                  ),
                  12.ph,
                  CustomTextField(
                    hintText: 'Название',
                    isRequired: true,
                    borderRadius: BorderRadius.circular(10),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    onChanged: (value) {
                      cubit.updateClipName(value);
                    },
                  ),
                  12.ph,
                  SaveButton(
                    videoUrl: videoUrl,
                  ),
                ],
              ),
            ),
            32.ph,
          ],
        );
      },
    );
  }
}
