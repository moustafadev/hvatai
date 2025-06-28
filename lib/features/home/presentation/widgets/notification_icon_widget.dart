part of '../home.dart';

class NotificationIconWidget extends StatelessWidget {
  const NotificationIconWidget({super.key, required this.count});
  final int count;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.assetsIconsBell,
          height: 24.h,
          width: 24.w,
        ),
        if (count > 0)
          Positioned(
            right: -1,
            top: -3,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: AppColors.purple1,
                shape: BoxShape.circle,
              ),
              child: CustomText(
                text: '$count',
                color: AppColors.white,
                fontSize: 8.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
      ],
    );
  }
}
