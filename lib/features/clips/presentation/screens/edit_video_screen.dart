part of '../clips.dart';

class EditVideoScreen extends StatelessWidget {
  final String? videoUrl;

  const EditVideoScreen({
    super.key,
    this.videoUrl,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClipsCubit, ClipsState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.blackColorIcon,
          appBar: AppBar(
            backgroundColor: AppColors.blackColorIcon,
            titleSpacing: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () => context.pop(),
            ),
            title: CustomText(
              text: 'Редактировать клип',
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.close, color: Colors.white),
                onPressed: () => context.pop(),
              ),
            ],
          ),
          body: const _EditVideoBody(),
        );
      },
    );
  }
}

class _EditVideoBody extends StatelessWidget {
  const _EditVideoBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClipsCubit, ClipsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(color: Colors.white),
          );
        }

        return const _EditVideoContent();
      },
    );
  }
}

class _EditVideoContent extends StatelessWidget {
  const _EditVideoContent();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClipsCubit, ClipsState>(
      builder: (context, state) {       

        if (!state.isVideoLoaded) {
          return const Center(
            child: CircularProgressIndicator(color: Colors.white),
          );
        }

        return const _EditVideoEditor();
      },
    );
  }
}

class _EditVideoEditor extends StatelessWidget {
  const _EditVideoEditor();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClipsCubit, ClipsState>(
      builder: (context, state) {
        final cubit = context.read<ClipsCubit>();
        final videoFile = cubit.videoFile;
        final videoDuration = cubit.videoDuration;
        final videoController = cubit.videoController;

        if (videoFile == null ||
            videoDuration == null ||
            videoController == null) {
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
                  child: AspectRatio(
                    aspectRatio: videoController.value.aspectRatio,
                    child: VideoPlayer(videoController),
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
                          videoFile: videoFile,
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
                          thumbnailCount: 10, // Fixed number of thumbnails
                          thumbnailHeight: 60.0,
                          showTimeDisplay: false,
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
                  const _SaveButton(),
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

class _SaveButton extends StatelessWidget {
  const _SaveButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClipsCubit, ClipsState>(
      builder: (context, state) {
        final cubit = context.read<ClipsCubit>();

        return Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: state.clipName.trim().isEmpty
                ? null
                : () {
                    if (state.endValue > state.startValue) {
                      cubit.trimVideo();
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Please select a valid video segment'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  },
            child: Container(
              width: 75,
              height: 21,
              decoration: BoxDecoration(
                color: state.clipName.trim().isEmpty
                    ? AppColors.disabledColor
                    : AppColors.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: CustomText(
                  text: 'Сохранить',
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: state.clipName.trim().isEmpty
                      ? AppColors.disabledBackground
                      : AppColors.blackColorIcon,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
