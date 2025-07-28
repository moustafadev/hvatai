part of '../search.dart';

class TopBarSearchWidget extends StatelessWidget {
  const TopBarSearchWidget({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      //crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
            onTap: () {
              context.pop();
            },
            child: Icon(Icons.arrow_back_ios)),
        2.ph,
        Expanded(
          child: CustomTextField(
            fillColor: AppColors.white,
            height: 40,
            borderRadius: BorderRadius.circular(10.r),
            onChanged: (value) {
              // setState(() {
              //   _searchQuery = value.toLowerCase().trim();
              // });
            },
            hintText: 'find'.tr(),
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
              image,
              width: 24,
              height: 24,
            ),
          ),
        ),
      ],
    );
  }
}
