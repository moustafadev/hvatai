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
      margin: EdgeInsets.all(10.r),
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30.r),
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
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.white : Colors.black,
                  borderRadius: BorderRadius.circular(25.r),
                ),
                child: FittedBox(
                  child: Row(
                    children: [
                      Image.asset(
                        imagePaths[index],
                        height: 24.h,
                        width: 24.w,
                        color: isSelected ? Colors.black : Colors.white,
                      ),
                      if (isSelected)
                        Padding(
                          padding: EdgeInsets.only(left: 6.w),
                          child: CustomText(
                            text: labels[index],
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
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
