part of '../clips.dart';

class PreviewClipScreen extends StatelessWidget {
  final int? streamId;
  final String clipName;

  const PreviewClipScreen({
    super.key,
    this.streamId,
    required this.clipName,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PreviewClipCubit, PreviewClipState>(
      builder: (context, state) {
        final cubit = context.read<PreviewClipCubit>();

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
          body: Column(
            children: [
              32.ph,
              // Video container using VideoThumbnailPlayer
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 64.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: VideoThumbnailPlayer(
                      videoPath: state.videoUrl ?? "",
                      controller: cubit.controller,
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
              // Готово button - hidden when streamId is null
              Opacity(
                opacity: streamId == null ? 0 : 1,
                child: IgnorePointer(
                  ignoring: streamId == null,
                  child: Padding(
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
                ),
              ),
              32.ph,
            ],
          ),
        );
      },
    );
  }
}
