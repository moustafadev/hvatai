part of '../profile.dart';

class ReferralsPointsAndAward extends StatelessWidget {
  const ReferralsPointsAndAward({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.blackDark.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(15.r),
                  border: Border.all(color: Colors.grey.withOpacity(0.2))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      Assets.assetsImagesUserGroupIcon,
                      height: 24.h,
                      width: 24.w,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    FittedBox(
                      child: CustomText(
                        text: "referralsPoints".tr(),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: "balance".tr(),
                          color: AppColors.blackDark,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        CustomText(
                          text: '1000 ₽',
                          color: AppColors.primary,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        12.pw,
        Expanded(
          child: GestureDetector(
            onTap: () {
              context.push(
                AppRoutes.myAwards,
                // must be a UserRegistrationData instance
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.blackDark.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.r),
                  border: Border.all(color: Colors.grey.withOpacity(0.2))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      Assets.assetsIconsCrownIcon,
                      height: 25.h,
                      width: 25.w,
                    ),
                    10.ph,
                    FittedBox(
                      child: CustomText(
                        text: "myAward".tr(),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    CustomText(
                      text: "viewCoupons".tr(),
                      color: AppColors.blackDark,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
