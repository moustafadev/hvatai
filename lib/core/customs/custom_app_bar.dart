part of 'customs.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.showBack = true,
    this.showSearch = true,
    this.showNotification = true,
    this.notificationCount = 0,
    this.showGift = true,
    this.onBack,
    this.onNotificationTap,
    this.onGiftTap,
    this.padding,
  });

  final bool showBack;
  final bool showSearch;
  final bool showNotification;
  final bool showGift;
  final int notificationCount;

  final VoidCallback? onBack;
  final VoidCallback? onNotificationTap;
  final VoidCallback? onGiftTap;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: padding ?? const EdgeInsets.only(right: 16, left: 16, top: 8),
        child: Row(
          children: [
            if (showBack)
              GestureDetector(
                onTap: onBack ?? () => context.pop(),
                child: const Icon(Icons.arrow_back_ios),
              ),
            if (showSearch)
              Expanded(
                child: CustomTextField(
                  height: 40,
                  fillColor: AppColors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  onChanged: (value) {
                    // handle search input
                  },
                  hintText: 'find'.tr(),
                  prefixIcon: Image.asset(
                    Assets.assetsIconsSearch,
                    color: AppColors.blackDark,
                    height: 22.h,
                    width: 22.w,
                  ),
                ),
              )
            else
              const Spacer(),
            8.pw,
            if (showNotification)
              GestureDetector(
                onTap: onNotificationTap,
                child: NotificationIconWidget(count: notificationCount),
              ),
            if (showNotification) 10.pw,
            if (showGift)
              GestureDetector(
                onTap: onGiftTap,
                child: CircleAvatar(
                  backgroundColor: AppColors.purple,
                  radius: 16.r,
                  child: Image.asset(
                    height: 16.h,
                    width: 16.w,
                    Assets.assetsIconsGift,
                    color: AppColors.white,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight + 20); // يزيد شوية بسبب الـ padding
}
