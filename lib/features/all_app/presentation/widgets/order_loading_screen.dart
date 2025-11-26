part of '../basket.dart';

class OrderLoadingScreen extends StatelessWidget {
  const OrderLoadingScreen({super.key});

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
            const CircularProgressIndicator(color: AppColors.primaryColor),
            24.ph,
            CustomText(
              text: 'processingPayment'.tr(),
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.blackColorIcon,
            ),
          ],
        ),
      ),
    );
  }
}

