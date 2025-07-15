part of '../profile.dart';

class InfoTradeProfileDetailBottom extends StatelessWidget {
  const InfoTradeProfileDetailBottom({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 19.37, vertical: 16.5),
      height: screenHeight * (72 / screenHeight),
      decoration: BoxDecoration(
        color: AppColors.disabledPink,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    height: 13.33,
                    width: 13.33,
                    color: AppColors.white,
                    Assets.assetsIconsStar,
                  ),
                  5.pw,
                  CustomText(
                    text: "4.5",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackDark,
                  )
                ],
              ),
              2.ph,
              CustomText(
                text: "Rating",
                fontSize: 11.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.blackDark,
              )
            ],
          ),
          VerticalDivider(
            color: AppColors.primaryPink,
            thickness: 1,
            width: 20,
          ),
          Column(
            children: [
              CustomText(
                text: "33,8K",
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.blackDark,
              ),
              2.ph,
              CustomText(
                text: "Reviews",
                fontSize: 11.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.blackDark,
              )
            ],
          ),
          VerticalDivider(
            color: AppColors.primaryPink,
            thickness: 1,
            width: 0,
          ),
          Column(
            children: [
              CustomText(
                text: "169,7K",
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.blackDark,
              ),
              2.ph,
              FittedBox(
                child: CustomText(
                  text: "Sold",
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.blackDark,
                ),
              )
            ],
          ),
          VerticalDivider(
            color: AppColors.primaryPink,
            thickness: 1,
            width: 20,
          ),
          Column(
            children: [
              CustomText(
                text: "+- 2d.",
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.blackDark,
              ),
              2.ph,
              CustomText(
                text: "Delivery",
                fontSize: 11.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.blackDark,
              )
            ],
          ),
        ],
      ),
    );
  }
}
