part of '../../profile.dart';

class TopProfileInfo extends StatelessWidget {
  const TopProfileInfo({
    super.key,
  });

  void _showImagePickerDialog(
    BuildContext context,
  ) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext dialogContext) {
        return PhotoOptionsDialog(
          onTakePhoto: () {
            context.read<ProfileCubit>().pickAndUpdateImage(
                  context,
                  ImageSource.camera,
                );
          },
          onChoosePhoto: () {
            context.read<ProfileCubit>().pickAndUpdateImage(
                  context,
                  ImageSource.gallery,
                );
          },
          onDelete: () {
            Navigator.of(dialogContext).pop();
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        final user = state.userProfileModel;
        return Row(
          children: [
            GestureDetector(
              onTap: () => _showImagePickerDialog(context),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.r),
                child: CustomImage(
                  key: ValueKey(user.image),
                  height: 41.h,
                  width: 41.w,
                  imageSource: user.image ?? '',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            15.pw,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: user.firstName ?? '',
                  fontWeight: FontWeight.w800,
                  fontSize: 14.sp,
                ),
                2.ph,
                Row(
                  children: [
                    CustomGradientButton(
                      fontSize: 13.sp,
                      height: 20.h,
                      width: 110.w,
                      borderRadius: 30.r,
                      fontWeight: FontWeight.w400,
                      buttonColor: AppColors.primary,
                      onPressed: () async {
                        final updatedUser =
                            await context.push<UserRegistrationData>(
                          AppRoutes.settings,
                          extra: user,
                        );

                        if (updatedUser != null && context.mounted) {
                          context
                              .read<ProfileCubit>()
                              .updateUserData(updatedUser);
                        }
                      },
                      text: user.role == 'seller'
                          ? 'sellerProfile'.tr()
                          : 'tradeProfile'.tr(),
                      textColor: AppColors.blackDark,
                    ),
                  ],
                )
              ],
            ),
            const Spacer(),
            GestureDetector(
              onTap: () async {
                context.push(AppRoutes.myAwards);
              },
              child: CircleAvatar(
                backgroundColor: AppColors.gray,
                radius: 20.r,
                child: Image.asset(
                  Assets.assetsIconsCrownIcon,
                  height: 25.h,
                  width: 25.w,
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
