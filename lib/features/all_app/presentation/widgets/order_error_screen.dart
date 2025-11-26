part of '../basket.dart';

class OrderErrorScreen extends StatelessWidget {
  final VoidCallback onRetry;
  const OrderErrorScreen({super.key, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBackground,
      appBar: AppBar(
        backgroundColor: AppColors.lightGreyBackground,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: AppColors.blackDark),
          onPressed: () {
            context.read<BasketCubit>().hideOrderErrorScreen();
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
              onPressed: onRetry,
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

