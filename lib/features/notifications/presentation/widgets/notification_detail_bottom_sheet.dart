part of '../notifications.dart';

class NotificationDetailBottomSheet extends StatelessWidget {
  final NotificationItem notification;

  const NotificationDetailBottomSheet({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 40.w,
            height: 4.h,
            margin: EdgeInsets.only(bottom: 16.h),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          Image.asset(
            Assets.assetsIconsAppleg,
            height: 40.h,
            width: 40.w,
            fit: BoxFit.fill,
          ),
          8.ph,
          RichText(
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              children: [
                TextSpan(
                  text: notification.message?.title ?? 'No Title',
                  style: TextStyle(
                    color: AppColors.primaryPink,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: ' ${notification.message?.body ?? ''}',
                  style: TextStyle(
                    color: AppColors.blackDark,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          CustomText(
            text:
                '${formatTimestamp(notification.message?.timestamp)} ago'.tr(),
            fontSize: 12.sp,
            color: AppColors.grey,
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
          16.ph,
          CustomButton(
            title: 'Subscribe',
            fontSize: 16.sp,
            fontWeight: FontWeight.w800,
            color: AppColors.primaryColor,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  String formatTimestamp(String? timestamp) {
    if (timestamp == null) return '';
    try {
      final parsedTime = DateTime.parse(timestamp);
      return timeago.format(parsedTime, locale: 'en_short');
    } catch (e) {
      return '';
    }
  }
}
