part of '../profile.dart';

class NotificationSettingsScreen extends StatelessWidget {
  const NotificationSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<ProfileCubit, ProfileState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = context.read<ProfileCubit>();

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                title: 'notifications'.tr(),
                showBackButton: true,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Live Stream Notifications'.tr(),
                      fontSize: 14,
                      fontFamily: "Gilroy-Bold",
                      fontWeight: FontWeight.bold,
                      color: AppColors.graniteGray,
                    ),
                    5.ph,
                    CustomSwitchWidget(
                      title: 'Streams from subscriptions'.tr(),
                      value: state.streamsFromSubscriptions,
                      onChanged: (val) {
                        cubit.toggleStreamsFromSubscriptions();
                      },
                    ),
                    Divider(thickness: 1, color: AppColors.gray),
                    CustomSwitchWidget(
                      title: 'Streams I saved'.tr(),
                      value: state.streamsISaved,
                      onChanged: (val) {
                        cubit.toggleStreamsISaved();
                      },
                    ),
                    Divider(thickness: 1, color: AppColors.gray),
                    CustomSwitchWidget(
                      title: 'Recommended Streams'.tr(),
                      value: state.recommendedStreams,
                      onChanged: (val) {
                        cubit.toggleRecommendedStreams();
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 40),
                      child: CustomText(
                        text:
                            'Choose which streams you\'ll be notified about. Grab It! sends you recommended shows based on your history.'
                                .tr(),
                        color: Colors.grey,
                        fontSize: 12,
                        fontFamily: "Gilroy-Bold",
                      ),
                    ),
                    CustomText(
                      text: 'SEARCH NOTIFICATIONS'.tr(),
                      fontSize: 12,
                      fontFamily: "Gilroy-Bold",
                      fontWeight: FontWeight.bold,
                      color: AppColors.graniteGray,
                    ),
                    12.ph,
                    Row(
                      children: [
                        CustomText(
                          text: 'Adding tags to chat'.tr(),
                          fontFamily: "Gilroy-Bold",
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            cubit.toggleSelectAll();
                          },
                          child: CustomText(
                            text: state.isAllSelected
                                ? 'Unselect ^'.tr()
                                : 'All ^'.tr(),
                            fontWeight: FontWeight.bold,
                            fontFamily: "Gilroy-Bold",
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    8.ph,
                    CustomSwitchWidget(
                      title: 'New subscriber'.tr(),
                      value: state.newSubscriber,
                      onChanged: (val) {
                        cubit.toggleNewSubscriber();
                      },
                    ),
                    30.ph,
                    CustomText(
                      text: 'SELLER BOOKMARK NOTIFICATIONS'.tr(),
                      fontSize: 12,
                      fontFamily: "Gilroy-Bold",
                      fontWeight: FontWeight.bold,
                      color: AppColors.graniteGray,
                    ),
                    5.ph,
                    CustomSwitchWidget(
                      title: 'Bookmarks from my streams'.tr(),
                      value: state.bookmarksFromStreams,
                      onChanged: (val) {
                        cubit.toggleBookmarksFromStreams();
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: CustomText(
                        fontFamily: "Gilroy-Bold",
                        text:
                            'Get notified when people bookmark your upcoming streams.'
                                .tr(),
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
