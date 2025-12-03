part of '../notifications.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
        body: BlocBuilder<NotificationsCubit, NotificationsState>(
          builder: (context, state) {
            if (state.isLoading) {
              return Center(
                child: CircularProgressIndicator(
                  color: AppColors.grey,
                ),
              );
            }

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
                  16.ph,
                  Expanded(
                    child: state.notifications?.data?.isEmpty ?? true
                        ? Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  Assets.assetsImagesEmptyNotification,
                                  width: 195.w,
                                  height: 64.h,
                                ),
                                24.ph,
                                CustomText(
                                  text: 'noNotifications'.tr(),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ],
                            ),
                          )
                        : ListView.separated(
                            itemCount: state.notifications!.data!.length,
                            separatorBuilder: (_, __) => 12.ph,
                            itemBuilder: (context, index) {
                              final notification =
                                  state.notifications!.data![index];
                              return NotificationItemWidget(
                                  notification: notification);
                            },
                          ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
