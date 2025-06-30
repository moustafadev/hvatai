part of '../home.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: CustomTextField(
              height: 40,
              fillColor: AppColors.gray,
              borderRadius: BorderRadius.circular(10.r),
              onChanged: (value) {
                // setState(() {
                //   _searchQuery = value.toLowerCase().trim();
                // });
              },
              hintText: 'Search by application'.tr(),
              prefixIcon: Image.asset(
                Assets.assetsIconsSearch,
                color: AppColors.blackDark,
                height: 22.h,
                width: 22.w,
              ),
            ),
          ),
          8.pw,
          GestureDetector(
            onTap: () {
              // Get.to(() => NotificationScreen1());
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: NotificationIconWidget(count: 0),
            ),
          ),
          10.pw,
          GestureDetector(
            onTap: () {
              // Get.to(() => GiftScreen());
            },
            child: CircleAvatar(
              backgroundColor: AppColors.gray,
              radius: 20.r,
              child: Image.asset(
                Assets.assetsIconsGift,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
