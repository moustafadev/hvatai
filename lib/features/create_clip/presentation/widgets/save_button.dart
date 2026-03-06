part of '../clips.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({super.key, this.videoUrl});
  final String? videoUrl;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateClipCubit, CreateClipState>(
      builder: (context, state) {
        final cubit = context.read<CreateClipCubit>();

        final isDisabled = state.clipName.trim().isEmpty ||
            state.isPreviewLoading ||
            state.endValue <= state.startValue;

        return Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: isDisabled
                ? null
                : () {
                    if (state.endValue > state.startValue) {
                      cubit.navigateToPreview(videoUrl ?? "");
                    } else {
                      showFloatingMessageError(
                          'Please select a valid video segment');
                    }
                  },
            child: Container(
              width: 75,
              height: 21,
              decoration: BoxDecoration(
                color: isDisabled
                    ? AppColors.disabledColor
                    : AppColors.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: CustomText(
                  text: 'Сохранить',
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: isDisabled
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
