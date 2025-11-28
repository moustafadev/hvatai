part of '../profile.dart';

class StreamerProfileTradeOptions extends StatelessWidget {
  const StreamerProfileTradeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(builder: (context, state) {
      final firstItem = state.streamerOptions.first;

      final remainingItems = state.streamerOptions.sublist(1);
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Container(
              decoration: BoxDecoration(
                color: Color(0xff000000).withOpacity(0.05),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0.r),
                child: CustomContainer(
                  height: 24.h,
                  width: 24.w,
                  image: DecorationImage(
                    image: AssetImage(firstItem['icon']),
                  ),
                ),
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'inviteFriendTitle'.tr(),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackDark,
                ),
                Row(
                  children: [
                    CustomText(
                      text: 'balanceAmount'.tr(),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.grey,
                    ),
                    CustomText(
                      text: '${state.userProfileModel.walletBalance} ₽',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
                    ),
                  ],
                ),
              ],
            ),
            trailing: Icon(
              Icons.chevron_right,
              color: AppColors.blackDark,
              size: 28,
            ),
            onTap: () {
              final screen = firstItem['screen'];
              if (screen is Function(BuildContext)) {
                screen(context);
              } else if (screen is Function()) {
                screen();
              }
            },
          ),
          ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            itemCount: remainingItems.length,
            itemBuilder: (context, index) {
              final item = remainingItems[index];
              return ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff000000).withOpacity(0.05),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0.r),
                    child: CustomContainer(
                      height: 24.h,
                      width: 24.w,
                      image: DecorationImage(
                        image: AssetImage(item['icon']),
                      ),
                    ),
                  ),
                ),
                title: CustomText(
                  text: item['title'],
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackDark,
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: AppColors.blackDark,
                  size: 28,
                ),
                onTap: () {
                  final screen = item['screen'];
                  if (screen is Function(BuildContext)) {
                    screen(context);
                  } else if (screen is Function()) {
                    screen();
                  }
                },
              );
            },
          ),
        ],
      );
    });
  }
}
