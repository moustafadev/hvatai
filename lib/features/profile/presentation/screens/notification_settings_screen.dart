part of '../profile.dart';

class NotificationSettingsScreen extends StatelessWidget {
  NotificationSettingsScreen({super.key});
  final notificationCubit = locator<NotificationCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: notificationCubit,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.lightGreyBackground,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: AppColors.blackColorIcon),
            onPressed: () {
              context.pop(context);
            },
          ),
        ),
        backgroundColor: AppColors.lightGreyBackground,
        body: BlocBuilder<NotificationCubit, NotificationState>(
          builder: (context, state) {
            final cubit = context.read<NotificationCubit>();

            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'notificationSettings'.tr(),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w800,
                      color: AppColors.blackDark,
                    ),
                    12.ph,
                    CustomText(
                      text: 'notificationDescription'.tr(),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                    ),
                    14.ph,
                    CustomSwitchWidget(
                      title: 'streamsFromSubscriptions'.tr(),
                      value: state.streamsFromSubscriptions,
                      onChanged: (val) {
                        cubit.toggleStreamsFromSubscriptions();
                      },
                    ),
                    Divider(thickness: 1, color: AppColors.gray),
                    CustomSwitchWidget(
                      title: 'streamsISaved'.tr(),
                      value: state.streamsISaved,
                      onChanged: (val) {
                        cubit.toggleStreamsISaved();
                      },
                    ),
                    Divider(thickness: 1, color: AppColors.gray),
                    CustomSwitchWidget(
                      title: 'recommendedStreams'.tr(),
                      value: state.recommendedStreams,
                      onChanged: (val) {
                        cubit.toggleRecommendedStreams();
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 40),
                      child: CustomText(
                        text: 'controlDescription'.tr(),
                        color: AppColors.grey,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: CustomText(
                            text: 'addingTagsToChat'.tr(),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            cubit.toggleSelectAll();
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomText(
                                text: state.isAllSelected ? 'Unselect' : 'All',
                                fontWeight: FontWeight.w700,
                                fontSize: 16.sp,
                              ),
                              Icon(Icons.unfold_more, size: 18)
                            ],
                          ),
                        ),
                      ],
                    ),
                    16.ph,
                    CustomText(
                      text: 'bookmarkNotificationDescription'.tr(),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                    ),
                    5.ph,
                    CustomSwitchWidget(
                      title: 'bookmarksFromMyStreams'.tr(),
                      value: state.bookmarksFromStreams,
                      onChanged: (val) {
                        cubit.toggleBookmarksFromStreams();
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
