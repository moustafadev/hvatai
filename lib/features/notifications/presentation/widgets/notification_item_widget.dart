part of '../notifications.dart';

class NotificationItemWidget extends StatelessWidget {
  final NotificationItem notification;

  const NotificationItemWidget({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (notification.read == false) {
          context
              .read<NotificationsCubit>()
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
              color: AppColors.black41.withValues(alpha: 0.08),
              blurRadius: 24,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          // leading: Image.asset(
          //   Assets.assetsIconsAppleg,
          //   height: 40.h,
          //   width: 40.w,
          //   fit: BoxFit.cover,
          // ),
          title: RichText(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "${notification.message?.title ?? ''} ",
                  style: TextStyle(
                    color: AppColors.text,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                // TextSpan(
                //   text: notification.message?.body ?? '',
                //   style: TextStyle(
                //     color: AppColors.blackDark,
                //     fontSize: 14.sp,
                //     fontWeight: FontWeight.w700,
                //   ),
                // ),
              ],
            ),
          ),
          subtitle: CustomText(
            text: getDiffTime(notification.createdAt ?? ''),
            color: AppColors.blackColor.withValues(alpha: 0.2),
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
          trailing: notification.read == false
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
}

String getDiffTime(String timestamp) {
  final dateTime = DateTime.parse(timestamp);
  final diff = DateTime.now().difference(dateTime);
  // format if less than 60 minutes
  if (diff.inMinutes < 60) {
    return '${diff.inMinutes} ${'minutes'.tr()} ${'ago'.tr()}';
  }
  // format if less than 24 hours
  if (diff.inHours < 24) {
    return '${diff.inHours} ${'hours'.tr()} ${'ago'.tr()}';
  }
  // format if less than 7 days
  if (diff.inDays < 7) {
    return '${diff.inDays} ${'days'.tr()} ${'ago'.tr()}';
  }
  // format if more than 7 days
  return '${diff.inDays} ${'days'.tr()}';
}
