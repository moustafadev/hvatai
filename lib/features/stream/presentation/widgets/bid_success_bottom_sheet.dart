part of '../stream.dart';

class BidSuccessBottomSheet extends StatelessWidget {
  final double bidAmount;

  const BidSuccessBottomSheet({
    super.key,
    required this.bidAmount,
  });

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Handle bar
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 8.h, bottom: 32.h),
                width: 40.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: AppColors.greyButton,
                  borderRadius: BorderRadius.circular(100.r),
                ),
              ),
            ),
            // Success icon
            Image.asset(
              Assets.assetsIconsSuccess,
              width: 60.w,
              height: 60.h,
            ),
            12.ph,
            // Success message
            CustomText(
              text: 'Ставка ${bidAmount.toStringAsFixed(0)} ₽',
              fontSize: 20.sp,
              fontWeight: FontWeight.w800,
              color: AppColors.blackDark,
            ),
            8.ph,
            CustomText(
              text: 'успешно размещена',
              fontSize: 20.sp,
              fontWeight: FontWeight.w800,
              color: AppColors.blackDark,
            ),
            32.ph,
          ],
        ),
      ),
    );
  }

  static void show(
    BuildContext context, {
    required double bidAmount,
  }) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      isDismissible: true,
      enableDrag: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
      ),
      builder: (ctx) => BidSuccessBottomSheet(bidAmount: bidAmount),
    );
  }
}
