part of '../invite_friend.dart';

class ReferralRewardScreen extends StatelessWidget {
  const ReferralRewardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              // Close button
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () => context.pop(),
                  child: Padding(
                    padding: EdgeInsets.only(top: 16.h),
                    child: Icon(
                      Icons.close,
                      size: 28.sp,
                      color: AppColors.blackDark,
                    ),
                  ),
                ),
              ),

              Expanded(
                child: Column(
                  children: [
                    48.ph,
                    // Gift image
                    Image.asset(
                      Assets.assetsImagesGift,
                      width: 200.w,
                      height: 200.h,
                      fit: BoxFit.contain,
                    ),
                    32.ph,
                    // Title
                    CustomText(
                      text: 'Вы получили\nвознаграждение!',
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w800,
                      textAlign: TextAlign.center,
                    ),
                    32.ph,
                    // Reward info row
                    Container(
                      padding: EdgeInsets.all(12.w),
                      child: Row(
                        children: [
                          // Icon container
                          CircleAvatar(
                            radius: 26.r,
                            backgroundColor: AppColors.greyButton,
                            child: Center(
                              child: SvgPicture.asset(
                                Assets.assetsIconsMoney2,
                                width: 32.r,
                                height: 32.r,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          12.pw,
                          // Text column
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: 'На ваш баланс зачислено 200 ₽',
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w800,
                                ),
                                4.ph,
                                CustomText(
                                  text: 'Ваш друг зарегистрировался в Хватай!',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Bottom button
              Padding(
                padding: EdgeInsets.only(bottom: 32.h),
                child: CustomGradientButton(
                  text: 'Перейти в Кошелёк',
                  onPressed: () {
                    context.pop();
                    // Navigate to wallet screen if needed
                    // context.push(AppRoutes.wallet);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
