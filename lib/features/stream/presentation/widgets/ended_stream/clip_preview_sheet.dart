part of '../../stream.dart';

class _ClipPreviewSheet extends StatelessWidget {
  const _ClipPreviewSheet({
    required this.videoUrl,
    required this.sharedController,
    required this.streamId,
  });

  final String videoUrl;
  final VideoPlayerController sharedController;
  final int streamId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ClipBottomSheetCubit>(
      create: (_) => locator<ClipBottomSheetCubit>()
        ..init(
          videoUrl: videoUrl,
          streamId: streamId,
          sharedController: sharedController,
        ),
      child: BlocBuilder<ClipBottomSheetCubit, ClipBottomSheetState>(
        builder: (context, state) {
          final cubit = context.read<ClipBottomSheetCubit>();

          return Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).padding.bottom + 16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox 8 at top
                const SizedBox(height: 8),
                // Container: height 44, width 4, color greyButton, radius 100
                Center(
                  child: Container(
                    height: 4,
                    width: 44,
                    decoration: BoxDecoration(
                      color: AppColors.greyButton,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
                // SizedBox 32
                const SizedBox(height: 32),
                // Video preview with edit icon outside
                Stack(
                  children: [
                    // Video preview
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 64.0),
                      child: AspectRatio(
                        aspectRatio: 9 / 16,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: state.isDownloading
                              ? Container(
                                  color: AppColors.text,
                                  child: const Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CircularProgressIndicator(
                                          color: AppColors.primaryColor,
                                        ),
                                        SizedBox(height: 16),
                                        CustomText(
                                          text: 'Обработка....',
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : SharedVideoPlayer(
                                  controller: sharedController,
                                ),
                        ),
                      ),
                    ),
                    // Edit icon outside video preview, right side, padding 16 from right screen
                    // Only show when video is downloaded

                    Positioned(
                      top: 0,
                      right: 16,
                      child: GestureDetector(
                        onTap: () => cubit.openEditor(
                            context, sharedController, streamId),
                        child: CircleAvatar(
                          backgroundColor: AppColors.greyButton,
                          radius: 16,
                          child: SvgPicture.asset(
                            Assets.assetsIconsEdit,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                // Container after video: full width (no horizontal padding), height 40, contains SVG lock2 and text
                Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: AppColors.text,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Assets.assetsIconsLock2,
                        width: 20,
                        height: 20,
                      ),
                      const SizedBox(width: 8),
                      CustomText(
                        text: 'Клип сохранён в вашем профиле как приватный',
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                ),
                // SizedBox 21
                const SizedBox(height: 21),
                // Bottom right: circle 48x48 with AppColors.text, contains download icon, padding 16 from right
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: GestureDetector(
                      onTap: (state.isSaving || state.isDownloading)
                          ? null
                          : () {
                              // Only save to downloads (editing file is already downloaded)
                              cubit.saveToDownloads();
                            },
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: AppColors.text,
                          shape: BoxShape.circle,
                        ),
                        child: state.isSaving
                            ? const Center(
                                child: CircularProgressIndicator(
                                  color: AppColors.primaryColor,
                                ),
                              )
                            : Center(
                                child: SvgPicture.asset(
                                  Assets.assetsIconsDownload,
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
          );
        },
      ),
    );
  }
}
