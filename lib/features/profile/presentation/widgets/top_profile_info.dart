part of '../profile.dart';

class TopProfileInfo extends StatelessWidget {
  const TopProfileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(builder: (context, state) {
      // final cubit = context.read<ProfileCubit>();
      return Row(
        children: [
          Container(
            height: 41.h,
            width: 41.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image:

                    // (snapshot.data
                    //                 .data()?['image'] !=
                    //             null &&
                    //         snapshot.data!
                    //             .data()!['image']
                    //             .toString()
                    //             .isNotEmpty)
                    //     ?

                    //     NetworkImage(
                    //         snapshot.data!.data()?['image'])
                    //     :

                    AssetImage(Assets.assetsImagesProfileImage)
                        as ImageProvider,
                fit: BoxFit.fill,
              ),
            ),
          ),
          15.pw,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                fontFamily: "Manrope",
                text: "Ahmed Ramadan".tr(),
                // snapshot.data!.data()!.firstName.toString(),
                fontWeight: FontWeight.w800,
                fontSize: 14.sp,
              ),
              2.ph,
              Row(
                children: [
                  Image.asset(Assets.assetsIconsStar,
                      color: AppColors.goldenColor, height: 16.h, width: 16.w),
                  3.pw,
                  CustomText(
                    text: "4.7",
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
                    onPressed: () {
                      context.push(
                        AppRoutes.tradeProfile,
                        // must be a UserRegistrationData instance
                      );
                    },
                  ),
                ],
              )
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
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
