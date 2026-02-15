part of '../analytics.dart';

class AnalyticsInfoBottomSheet extends StatelessWidget {
  final String title;
  final String message;

  const AnalyticsInfoBottomSheet({
    super.key,
    required this.title,
    required this.message,
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
            CustomText(
              text: title,
              fontSize: 16.sp,
              fontWeight: FontWeight.w800,
            ),
            8.ph,

            // Content
            CustomText(
              text: message,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              height: 1.5,
            ),

            16.ph,
            // Button
            CustomButton(
              title: 'Понятно',
              onPressed: () => context.pop(),
              color: AppColors.primaryColor,
              textColor: AppColors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w800,
            ),
            32.ph,
          ],
        ),
      ),
    );
  }

  static void show(
    BuildContext context, {
    required String title,
    required String message,
  }) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
      ),
      builder: (context) => AnalyticsInfoBottomSheet(
        title: title,
        message: message,
      ),
    );
  }
}
