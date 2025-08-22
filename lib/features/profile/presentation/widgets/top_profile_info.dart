part of '../profile.dart';

class TopProfileInfo extends StatelessWidget {
  const TopProfileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(builder: (context, state) {
      final user = state.userProfileModel;
      return Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50.r),
            child: CustomImage(
              height: 41.h,
              width: 41.w,
              imageSource: user.image ?? '',
              fit: BoxFit.cover,
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
                  Image.asset(
                    Assets.assetsIconsStar,
                    color: AppColors.goldenColor,
                    height: 16.h,
                    width: 16.w,
                  ),
                  3.pw,
                  CustomText(
                    text: user.personalRating.toString(),
                  ),
                  12.pw,
                  CustomGradientButton(
                    fontSize: 13.sp,
                    height: 20.h,
                    width: 110.w,
                    borderRadius: 30.r,
                    fontWeight: FontWeight.w400,
                    isDisabled: true,
                    buttonColor: AppColors.primary,
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
              final updatedUser = await context.push<UserRegistrationData>(
                AppRoutes.settings,
                extra: user,
              );

              if (updatedUser != null) {
                context.read<ProfileCubit>().updateUserData(updatedUser);
              }
            },
            child: CircleAvatar(
              backgroundColor: AppColors.gray,
              radius: 20.r,
              child: Image.asset(
                Assets.assetsIconsSettings,
                height: 18.h,
                width: 18.w,
              ),
            ),
          )
        ],
      );
    });
  }
}
