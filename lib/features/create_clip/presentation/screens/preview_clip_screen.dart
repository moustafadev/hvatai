part of '../clips.dart';

class PreviewClipScreen extends StatelessWidget {
  final String videoPath;
  final int? streamId;
  final String clipName;

  const PreviewClipScreen({
    super.key,
    required this.videoPath,
    this.streamId,
    required this.clipName,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PreviewClipCubit, PreviewClipState>(
      builder: (context, state) {
        final cubit = context.read<PreviewClipCubit>();
        final controller = cubit.controller;

        return Scaffold(
          backgroundColor: AppColors.blackColorIcon,
          appBar: AppBar(
            backgroundColor: AppColors.blackColorIcon,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () => context.pop(),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.close, color: Colors.white),
                onPressed: () => context.pop(),
              ),
            ],
          ),
          body: state.isInitialized && controller != null
              ? Column(
                  children: [
                    32.ph,
                    // Video container with same layout as create_clip_screen
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 64.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              AspectRatio(
                                aspectRatio: controller.value.aspectRatio,
                                child: VideoPlayer(controller),
                              ),
                              // Centered play icon overlay
                              if (!state.isPlaying)
                                Positioned.fill(
                                  child: GestureDetector(
                                    onTap: () => cubit.play(),
                                    child: Center(
                                      child: Container(
                                        width: 56,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          color: AppColors.background,
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    12.ph,
                    // Название display
                    Align(
                      alignment: Alignment.center,
                      child: CustomText(
                        text: 'Название: $clipName',
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    65.ph,
                    // Готово button
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: CustomButton(
                        title: 'Готово',
                        onPressed: state.isUploading
                            ? null
                            : () => cubit.uploadClip(context),
                        isLoading: state.isUploading,
                        color: AppColors.primaryColor,
                        textColor: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                        height: 54,
                      ),
                    ),
                    32.ph,
                  ],
                )
              : const Center(
                  child: CircularProgressIndicator(color: Colors.white),
                ),
        );
      },
    );
  }
}
