part of '../stream.dart';

class BidPurchaseInfoBottomSheet extends StatelessWidget {
  final VoidCallback onAddInfoPressed;
  const BidPurchaseInfoBottomSheet({
    super.key,
    required this.onAddInfoPressed,
  });

  static void show(
    BuildContext context, {
    required VoidCallback onAddInfoPressed,
  }) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
      ),
      builder: (_) => BidPurchaseInfoBottomSheet(
        onAddInfoPressed: onAddInfoPressed,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Handle bar
              Center(
                child: Container(
                  width: 40.w,
                  height: 4.h,
                  margin: EdgeInsets.only(bottom: 12.h),
                  decoration: BoxDecoration(
                    color: AppColors.greyLine,
                    borderRadius: BorderRadius.circular(2.r),
                  ),
                ),
              ),

              // Main heading
              CustomText(
                text:
                    'Чтобы покупать в lives, нам нужна ваша информация об оплате и доставке',
                fontSize: 16.sp,
                fontWeight: FontWeight.w800,
                textAlign: TextAlign.center,
              ),
              8.ph,
              // Description text
              CustomText(
                text:
                    'Добро пожаловать в Хватай! Для участия в аукционах вам необходимо указать способ оплаты и адрес доставки. Все ставки и покупки являются окончательными.',
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
              ),
              8.ph,
              // Description text
              CustomText(
                text:
                    'С вас не будет взиматься плата до тех пор, пока вы не приобретете товар.',
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.purple2,
                textAlign: TextAlign.center,
              ),
              24.ph,
              // Add information button
              CustomGradientButton(
                text: 'Добавить информацию',
                onPressed: () {
                  Navigator.of(context).pop();
                  onAddInfoPressed();
                },
                height: 48,
                fontWeight: FontWeight.w800,
              ),
              20.ph,
            ],
          ),
        ),
      ),
    );
  }
}
