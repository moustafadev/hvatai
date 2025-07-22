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
          GestureDetector(
            onTap: () {
              context.push(AppRoutes.tradeProfileDetail);
            },
            child: Container(
              height: 41.h,
              width: 41.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: user.data!.image != null
                      ? CachedNetworkImageProvider(user.data!.image!)
                      : AssetImage(Assets.assetsImagesProfileImage)
                          as ImageProvider,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          15.pw,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: user.data!.name!,
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
                    text: user.data!.personalRating.toString(),
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
                    text: "tradeProfile".tr(),
                    textColor: AppColors.blackDark,
                  ),
                ],
              )
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () async {
              final updated = await context.push<bool>(
                AppRoutes.settings,
                extra: user,
              );

              if (updated == true) {
                context.read<ProfileCubit>().reloadProfile();
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
