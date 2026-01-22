part of '../notifications.dart';

class NotificationIconWidget extends StatelessWidget {
  const NotificationIconWidget({super.key, required this.count});
  final int count;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          Assets.assetsIconsBell,
          height: 24.h,
          width: 24.w,
        ),
        if (count > 0)
          Positioned(
            right: -2,
            top: -2,
            child: Container(
              alignment: Alignment.center,
              constraints: const BoxConstraints(
                minWidth: 16,
                minHeight: 16,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              decoration: const BoxDecoration(
                color: AppColors.purple,
                shape: BoxShape.circle,
              ),
              child: Text(
                '$count',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                  height: 1,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
