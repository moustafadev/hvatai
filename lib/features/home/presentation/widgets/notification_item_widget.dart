part of '../home.dart';

class NotificationItemWidget extends StatelessWidget {
  final NotificationItem notification;

  const NotificationItemWidget({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (notification.read == false) {
          context
              .read<MainNotificationCubit>()
              .markResdNotification(notification.id!);
        }

        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
          ),
          backgroundColor: Colors.white,
          builder: (context) =>
              NotificationDetailBottomSheet(notification: notification),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Image.asset(
            Assets.assetsIconsAppleg,
            height: 40.h,
            width: 40.w,
            fit: BoxFit.cover,
          ),
          title: RichText(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "${notification.message?.title ?? ''} ",
                  style: TextStyle(
                    color: AppColors.primaryPink,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: notification.message?.body ?? '',
                  style: TextStyle(
                    color: AppColors.blackDark,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          subtitle: CustomText(
            text:
                '${formatTimestamp(notification.message?.timestamp)} ago'.tr(),
            color: AppColors.grey,
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
          trailing: notification.read == 0
              ? Container(
                  width: 8.w,
                  height: 8.w,
                  decoration: BoxDecoration(
                    color: AppColors.red,
                    shape: BoxShape.circle,
                  ),
                )
              : null,
        ),
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
