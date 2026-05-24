part of '../cart.dart';

class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBackground,
      appBar: AppBar(
        backgroundColor: AppColors.lightGreyBackground,
        automaticallyImplyLeading: false,
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
              text: 'operationCompletedSuccessfully'.tr(),
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            CustomGradientButton(
              text: 'toMain'.tr(),
              onPressed: () {
                context.go(AppRoutes.home);
              },
              width: 200.w,
              height: 52,
              borderRadius: 10,
            ),
            50.ph,
          ],
        ),
      ),
    );
  }
}
