part of '../cart.dart';

class PaymentFailedScreen extends StatelessWidget {
  const PaymentFailedScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBackground,
      appBar: AppBar(
        backgroundColor: AppColors.lightGreyBackground,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: AppColors.blackDark),
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: '🙁',
              fontSize: 80.sp,
            ),
            24.ph,
            CustomText(
              text: 'anErrorOccurred'.tr(),
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              textAlign: TextAlign.center,
            ),
            40.ph,
            CustomGradientButton(
              text: 'retry'.tr(),
              onPressed: () {
                context.pop();
              },
              width: 200.w,
              height: 52,
              borderRadius: 10,
            ),
          ],
        ),
      ),
    );
  }
}
