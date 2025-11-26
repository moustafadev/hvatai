part of '../basket.dart';

class OrderSuccessScreen extends StatelessWidget {
  final VoidCallback onContinue;
  const OrderSuccessScreen({super.key, required this.onContinue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBackground,
      appBar: AppBar(
        backgroundColor: AppColors.lightGreyBackground,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: AppColors.blackDark),
          onPressed: () {
            context.read<BasketCubit>().hideOrderSuccessScreen();
            context.pop();
          },
        ),
       
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Spacer(),
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
            Spacer(),
            CustomGradientButton(
              text: 'toMain'.tr(),
              onPressed: onContinue,
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

