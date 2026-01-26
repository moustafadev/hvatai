part of '../invite_friend.dart';

class AcceptInviteSuccessScreen extends StatelessWidget {
  const AcceptInviteSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBackground,
      appBar: AppBar(
        backgroundColor: AppColors.lightGreyBackground,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: AppColors.blackDark),
          onPressed: () => context.pop(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              Assets.assetsIconsSuccess,
              width: 60.w,
              height: 60.h,
            ),
            24.ph,
            CustomText(
              text: 'codeActivated'.tr(),
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: CustomGradientButton(
                text: 'continue'.tr(),
                onPressed: () => context.go(AppRoutes.home),
                width: double.infinity,
                height: 52,
                borderRadius: 10,
              ),
            ),
            50.ph,
          ],
        ),
      ),
    );
  }
}
