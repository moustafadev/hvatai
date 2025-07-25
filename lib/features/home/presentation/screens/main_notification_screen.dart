part of '../home.dart';

class MainNotificationScreen extends StatelessWidget {
  const MainNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<MainNotificationCubit>()..getNotifications(),
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          backgroundColor: AppColors.lightGreyBackground,
          appBar: AppBar(
            backgroundColor: AppColors.lightGreyBackground,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: AppColors.blackDark,
              ),
              onPressed: () {
                context.pop();
              },
            ),
          ),
          body: BlocBuilder<MainNotificationCubit, MainNotificationState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'notifications'.tr(),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w800,
                    ),
                    if (state.notifications.isEmpty)
                      Expanded(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                width: 195.w,
                                height: 64.h,
                                Assets.assetsImagesEmptyNotification,
                              ),
                              24.ph,
                              CustomText(
                                text: 'noNotifications'.tr(),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ],
                          ),
                        ),
                      ),
                    16.ph,
                    Expanded(
                      child: ListView.separated(
                        itemCount: state.notifications.length,
                        separatorBuilder: (_, __) => 12.ph,
                        itemBuilder: (context, index) {
                          final notification = state.notifications[index];
                          return NotificationItem(notification: notification);
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
