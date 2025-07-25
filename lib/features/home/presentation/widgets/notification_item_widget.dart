part of '../home.dart';

class NotificationItem extends StatelessWidget {
  final NotificationModel notification;

  const NotificationItem({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
          ),
          backgroundColor: Colors.white,
          builder: (context) => const NotificationDetailBottomSheet(),
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
            Assets.assetsIconsAppleg, // يمكنك تغييره حسب نوع الإشعار
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
                  text: notification.companyName ?? 'Company',
                  style: TextStyle(
                    color: AppColors.primaryPink,
                    fontSize: 14.sp,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text:
                      ' ${notification.titleNotification ?? "has subscribed to you"}',
                  style: TextStyle(
                    color: AppColors.blackDark,
                    fontSize: 14.sp,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          subtitle: CustomText(
            text: '3 hours ago',
            color: AppColors.grey,
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
          trailing: Container(
            width: 8.w,
            height: 8.w,
            decoration: BoxDecoration(
              color: AppColors.red,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
