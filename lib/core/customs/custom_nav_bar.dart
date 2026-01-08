part of 'customs.dart';

class CustomNavBar extends StatelessWidget {
  final NavBarConfig navBarConfig;
  final NavBarDecoration navBarDecoration;

  const CustomNavBar({
    super.key,
    required this.navBarConfig,
    this.navBarDecoration = const NavBarDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 20.0,
          offset: Offset(-2.0, 0),
        ),
      ],
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 12.w,
        right: 12.w,
        bottom: 28.h,
      ),
      child: Container(
        height: navBarConfig.navBarHeight,
        padding: EdgeInsets.all(8.r),
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
          children: List.generate(navBarConfig.items.length, (index) {
            final item = navBarConfig.items[index];
            final isSelected = navBarConfig.selectedIndex == index;

            return GestureDetector(
              onTap: () {
                navBarConfig.onItemSelected(index);
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                padding: EdgeInsets.all(12),
                height: 45.h,
                decoration: BoxDecoration(
                  color: isSelected ? Colors.white : AppColors.blackColorIcon,
                  borderRadius: BorderRadius.circular(100.r),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      isSelected ? item.icon : item.inactiveIcon,
                      if (isSelected && item.title != "") ...[
                        SizedBox(width: 8.w),
                        CustomText(
                          text: item.title ?? "",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.blackDark,
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
