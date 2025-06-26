part of '../bottom_nav.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  final List<String> imagePaths = [
    Assets.assetsIconsHome,
    Assets.assetsIconsSearch,
    Assets.assetsIconsMenu,
    Assets.assetsIconsFav,
    Assets.assetsIconsProfile,
  ];

  final List<String> labels = [
    "Home".tr(),
    "categories".tr(),
    "menu".tr(),
    "activity".tr(),
    "profile".tr(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61.h,
      margin: EdgeInsets.all(25.w),
      padding: EdgeInsets.symmetric(
        horizontal: 8.w,
        vertical: 8.h,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.blackLite,
            AppColors.blackDark,
            AppColors.blackDark,
          ],
        ),
        borderRadius: BorderRadius.circular(100.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(imagePaths.length, (index) {
          final isSelected = selectedIndex == index;
          return Expanded(
            child: GestureDetector(
              onTap: () => onTap(index),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                padding: EdgeInsets.all(12.r),
                margin: EdgeInsets.symmetric(horizontal: 8.w),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.white : AppColors.blackColorIcon,
                  borderRadius: BorderRadius.circular(100.r),
                ),
                child: FittedBox(
                  child: Row(
                    children: [
                      Image.asset(
                        imagePaths[index],
                        height: 21.h,
                        width: 21.w,
                        color:
                            isSelected ? AppColors.blackDark : AppColors.white,
                      ),
                      8.ph,
                      if (isSelected)
                        CustomText(
                          text: labels[index],
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.blackDark,
                        ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
