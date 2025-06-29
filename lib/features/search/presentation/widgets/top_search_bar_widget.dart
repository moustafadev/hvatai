part of '../search.dart';

class TopBarSearchWidget extends StatelessWidget {
  const TopBarSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextField(
            fillColor: AppColors.gray,
            borderRadius: BorderRadius.circular(10.r),
            onChanged: (value) {
              // setState(() {
              //   _searchQuery = value.toLowerCase().trim();
              // });
            },
            hintText: 'Search for “Apple Technology”'.tr(),
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
          child: Image.asset(
            Assets.assetsIconsShare,
            width: 24,
            height: 24,
          ),
        ),
      ],
    );
  }
}
