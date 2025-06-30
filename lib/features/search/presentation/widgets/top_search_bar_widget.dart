part of '../search.dart';

class TopBarSearchWidget extends StatelessWidget {
  const TopBarSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: CustomTextField(
              fillColor: AppColors.gray,
              height: 40,
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
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: GestureDetector(
              onTap: () {
                // Get.to(() => NotificationScreen1());
              },
              child: Image.asset(
                Assets.assetsIconsShare,
                width: 24,
                height: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
