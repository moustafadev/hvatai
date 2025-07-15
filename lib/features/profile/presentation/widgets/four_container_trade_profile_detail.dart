part of '../profile.dart';

class FourContainerTradeProfileDetail extends StatelessWidget {
  const FourContainerTradeProfileDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            height: 85.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(2, 2),
                  ),
                ]),
            child: Column(
              children: [
                14.ph,
                Image.asset(
                  Assets.assetsIconsUsersGroupRoundedIcon,
                  height: 28.h,
                  width: 28.w,
                ),
                12.ph,
                CustomText(
                  text: 'Goods'.tr(),
                  fontSize: 14.sp,
                  color: AppColors.blackDark,
                  fontWeight: FontWeight.w800,
                ),
              ],
            ),
          ),
        ),
        8.pw,
        Expanded(
          child: Container(
            height: 85.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(2, 2),
                  ),
                ]),
            child: Column(
              children: [
                14.ph,
                Image.asset(
                  Assets.assetsImagesStreamIcon,
                  height: 28.h,
                  width: 28.w,
                ),
                12.ph,
                CustomText(
                  text: 'Streams'.tr(),
                  fontSize: 14.sp,
                  color: AppColors.blackDark,
                  fontWeight: FontWeight.w800,
                ),
              ],
            ),
          ),
        ),
        8.pw,
        Expanded(
          child: Container(
            height: 85.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(2, 2),
                  ),
                ]),
            child: Column(
              children: [
                14.ph,
                Image.asset(
                  Assets.assetsIconsWallet,
                  color: AppColors.blackDark,
                  height: 28.h,
                  width: 28.w,
                ),
                12.ph,
                CustomText(
                  text: 'Wallet'.tr(),
                  fontSize: 14.sp,
                  color: AppColors.blackDark,
                  fontWeight: FontWeight.w800,
                ),
              ],
            ),
          ),
        ),
        8.pw,
        Expanded(
          child: Container(
            height: 85.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(2, 2),
                  ),
                ]),
            child: Column(
              children: [
                14.ph,
                Image.asset(
                  Assets.assetsImagesOrderIcon,
                  height: 28.h,
                  width: 28.w,
                ),
                12.ph,
                CustomText(
                  text: 'Orders'.tr(),
                  fontSize: 14.sp,
                  color: AppColors.blackDark,
                  fontWeight: FontWeight.w800,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
