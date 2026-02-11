part of '../../profile.dart';

class ClipSettingsBottomSheet extends StatelessWidget {
  const ClipSettingsBottomSheet({super.key});

  static void show(
    BuildContext context, {
    required ClipModel clip,
  }) {
    // Get ProfileClipsCubit from the calling context
    final clipsCubit = context.read<ProfileClipsCubit>();

    // Open clip settings in cubit
    clipsCubit.openClipSettings(clip);

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useRootNavigator: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
      ),
      builder: (ctx) => BlocProvider.value(
        value: clipsCubit,
        child: BlocListener<ProfileClipsCubit, ProfileClipsState>(
          listenWhen: (previous, current) =>
              previous.editingClip != null && current.editingClip == null,
          listener: (context, state) {
            // Close bottom sheet when editing clip is cleared (after save/delete)
            if (state.editingClip == null && Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }
          },
          child: const ClipSettingsBottomSheet(),
        ),
      ),
    ).then((_) {
      // Clean up when bottom sheet is dismissed
      clipsCubit.closeClipSettings();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileClipsCubit, ProfileClipsState>(
      builder: (context, state) {
        final cubit = context.read<ProfileClipsCubit>();
        final editingClip = state.editingClip;

        if (editingClip == null) {
          return const SizedBox.shrink();
        }

        return Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          decoration: BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
          ),
          child: SafeArea(
            top: false,
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Handle bar
                  Center(
                    child: Container(
                      width: 40.w,
                      height: 4.h,
                      margin: EdgeInsets.only(bottom: 12.h),
                      decoration: BoxDecoration(
                        color: AppColors.greyLine,
                        borderRadius: BorderRadius.circular(2.r),
                      ),
                    ),
                  ),
                  // Title
                  CustomText(
                    text: 'Настройки клипа',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w800,
                  ),
                  16.ph,
                  // Name field
                  CustomTextField(
                    initialValue: state.editingClipName,
                    hintText: 'Название клипа',
                    fillColor: Colors.white,
                    borderRadius: BorderRadius.circular(8.r),
                    onChanged: (value) {
                      cubit.updateEditingClipName(value);
                    },
                  ),
                  16.ph,
                  // Show in profile toggle
                  CustomSwitchWidget(
                    title: 'Показывать в профиле',
                    value: state.editingClipStatus,
                    onChanged: (value) {
                      cubit.updateEditingClipStatus(value);
                    },
                  ),
                  24.ph,
                  // Save button
                  CustomGradientButton(
                    text: 'Сохранить',
                    onPressed: (state.isUpdatingClip ||
                            state.isDeletingClip ||
                            state.editingClipName.trim().isEmpty)
                        ? null
                        : () async {
                            await cubit.saveClip();
                          },
                    height: 48,
                    fontWeight: FontWeight.w800,
                    isLoading: state.isUpdatingClip,
                  ),
                  12.ph,
                  // Delete button
                  CustomButton(
                    title: 'Удалить клип',
                    color: AppColors.greyButton,
                    textColor: AppColors.text,
                    height: 48,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    onPressed: (state.isUpdatingClip || state.isDeletingClip)
                        ? null
                        : () async {
                            final confirmed = await showConfirmDialog(
                              context,
                              title: 'Удалить клип?',
                              content:
                                  'Вы уверены, что хотите удалить этот клип?',
                              confirmText: 'Удалить',
                            );

                            if (confirmed && context.mounted) {
                              await cubit.deleteClip();
                            }
                          },
                    widget: Image.asset(
                      Assets.assetsIconsTrash,
                      width: 20.w,
                      height: 20.h,
                    ),
                    isSizedBetweenIcon: true,
                    sizedBetweenIcon: 8.w,
                    alignmentIconText: MainAxisAlignment.center,
                  ),
                  20.ph,
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
