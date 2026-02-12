part of 'customs.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget(
      {this.isSearch = true,
      this.isCircle = false,
      this.onGiftTap,
      this.isGift = true,
      this.isBack = true,
      super.key});
  final bool isSearch;
  final bool isGift;
  final bool isCircle;
  final bool isBack;
  final VoidCallback? onGiftTap;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<NotificationsCubit>()..getNotifications(),
      child: BlocBuilder<NotificationsCubit, NotificationsState>(
          builder: (context, state) {
        final cubit = context.read<NotificationsCubit>();
        final count = state.notifications?.data?.length ?? 0;
        return Row(
          children: [
            if (isBack)
              GestureDetector(
                  onTap: () {
                    context.pop();
                  },
                  child: Icon(Icons.arrow_back_ios)),
            Expanded(
              child: isSearch
                  ? CustomTextField(
                      height: 40,
                      fillColor: AppColors.white,
                      borderRadius: BorderRadius.circular(10.r),
                      // onChanged: (value) {},
                      readOnly: true,
                      onTap: () => context.go(AppRoutes.search),
                      hintText: 'find'.tr(),
                      prefixIcon: Image.asset(
                        Assets.assetsIconsSearch,
                        color: AppColors.blackDark,
                        height: 22.h,
                        width: 22.w,
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
            8.pw,
            GestureDetector(
              onTap: () {
                context.push(AppRoutes.mainNotification, extra: cubit);
              },
              child: NotificationIconWidget(count: count),
            ),
            isGift ? 10.pw : const SizedBox.shrink(),
            GestureDetector(
              onTap: onGiftTap ??
                  () {
                    context.push(AppRoutes.inviteFriends);
                  },
              child: isGift
                  ? CircleAvatar(
                      backgroundColor: AppColors.purple,
                      radius: 16.r,
                      child: Image.asset(
                        height: 16.h,
                        width: 16.w,
                        Assets.assetsIconsGift,
                        color: AppColors.white,
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
          ],
        );
      }),
    );
  }
}
