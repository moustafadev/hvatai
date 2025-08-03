part of 'customs.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget(
      {this.isSearch = true,
      this.isCircle = false,
      this.isGift = true,
      super.key});
  final bool isSearch;
  final bool isGift;
  final bool isCircle;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<MainNotificationCubit>()..getNotifications(),
      child: BlocBuilder<MainNotificationCubit, MainNotificationState>(
          builder: (context, state) {
        final cubit = context.read<MainNotificationCubit>();
        final count = state.notifications?.data?.length ?? 0;
        return Row(
          children: [
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
                      onChanged: (value) {},
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
              child: isCircle
                  ? CircleAvatar(
                      backgroundColor: AppColors.white,
                      radius: 20.r,
                      child: NotificationIconWidget(count: count),
                    )
                  : NotificationIconWidget(count: count),
            ),
            isGift ? 10.pw : const SizedBox.shrink(),
            GestureDetector(
              onTap: () {
                // Get.to(() => GiftScreen());
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
