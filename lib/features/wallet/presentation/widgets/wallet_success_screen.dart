part of '../wallet.dart';

class WalletSuccessScreen extends StatelessWidget {
  final double withdrawalAmount;
  final String symbol;
  final VoidCallback onContinue;

  const WalletSuccessScreen({
    super.key,
    required this.withdrawalAmount,
    required this.symbol,
    required this.onContinue,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                text: '${withdrawalAmount.toStringAsFixed(0)} $symbol',
                fontSize: 24.sp,
                fontWeight: FontWeight.w800,
                textAlign: TextAlign.center,
              ),
              16.ph,
              CustomText(
                text: 'withdrawalSuccessMessage'.tr(),
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.blackTransparent40,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              CustomGradientButton(
                text: 'toMain'.tr(),
                onPressed: onContinue,
                width: double.infinity,
                height: 52,
                borderRadius: 10,
              ),
              40.ph,
            ],
          ),
        ),
      ),
    );
  }
}

