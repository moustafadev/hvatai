part of '../notifications.dart';

class NotificationDetailBottomSheet extends StatelessWidget {
  final NotificationItem notification;

  const NotificationDetailBottomSheet({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          8.ph,
          Container(
            width: 40.w,
            height: 4.h,
            margin: EdgeInsets.only(bottom: 16.h),
            decoration: BoxDecoration(
              color: AppColors.lightGray,
              borderRadius: BorderRadius.circular(100.r),
            ),
          ),
          RichText(
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              children: [
                TextSpan(
                  text: notification.message?.title ?? 'No Title',
                  style: TextStyle(
                    color: AppColors.text,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                // TextSpan(
                //   text: ' ${notification.message?.body ?? ''}',
                //   style: TextStyle(
                //     color: AppColors.blackDark,
                //     fontSize: 14.sp,
                //     fontWeight: FontWeight.w700,
                //   ),
                // ),
              ],
            ),
          ),
          CustomText(
            text: getDiffTime(notification.createdAt ?? ''),
            fontSize: 12.sp,
            color: AppColors.blackColor.withValues(alpha: 0.2),
            fontWeight: FontWeight.w400,
          ),
          16.ph,
          Align(
            alignment: Alignment.centerLeft,
            child: CustomText(
              text: notification.message?.body ?? '',
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.start,
            ),
          ),
          32.ph,
          // 16.ph,
          // CustomButton(
          //   title: 'Subscribe',
          //   fontSize: 16.sp,
          //   fontWeight: FontWeight.w800,
          //   color: AppColors.primaryColor,
          //   onPressed: () {},
          // ),
        ],
      ),
    );
  }
}
