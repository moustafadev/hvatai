part of '../invite_friend.dart';

class HowItWorksBottomSheet extends StatelessWidget {
  const HowItWorksBottomSheet({super.key});

  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const HowItWorksBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Handle bar
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 8.h, bottom: 12.h),
                width: 40.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: AppColors.greyButton,
                  borderRadius: BorderRadius.circular(100.r),
                ),
              ),
            ),
            // Title
            CustomText(
              text: 'howItWorks'.tr(),
              fontSize: 18.sp,
              fontWeight: FontWeight.w800,
              color: AppColors.blackDark,
            ),
            16.ph,
            // Terms list
            _HowItWorksItem(
              text: 'friendGivesReferralCode'.tr(),
            ),
            12.ph,
            _HowItWorksItem(
              text: 'enterCodeHere'.tr(),
            ),
            12.ph,
            _HowItWorksItem(
              text: 'bothReceiveBonuses'.tr(),
            ),
            24.ph,
            // OK button
            CustomButton(
              title: 'ok'.tr(),
              onPressed: () => Navigator.pop(context),
              color: AppColors.primaryColor,
              textColor: AppColors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w800,
              height: 42,
            ),
            32.ph,
          ],
        ),
      ),
    );
  }
}

class _HowItWorksItem extends StatelessWidget {
  final String text;

  const _HowItWorksItem({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          Assets.assetsImagesCheckCorrect,
          fit: BoxFit.contain,
          width: 48.w,
          height: 48.h,
        ),
        12.pw,
        Expanded(
          child: CustomText(
            text: text,
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
