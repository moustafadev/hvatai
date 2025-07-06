part of '../home.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({this.isSearch = true, super.key});
  final bool isSearch;
  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.end,
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
                )
              : const SizedBox.shrink(),
        ),
        8.pw,
        GestureDetector(
          onTap: () {
            // Get.to(() => NotificationScreen1());
          },
          child: NotificationIconWidget(count: 2),
        ),
        10.pw,
        GestureDetector(
          onTap: () {
            // Get.to(() => GiftScreen());
          },
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
    );
  }
}
