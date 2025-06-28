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
    return Container(
      height: navBarConfig.navBarHeight,
      // margin: EdgeInsets.only(bottom: 28.w, left: 12.h, right: 12.h),
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
              if (index == 2) {
                _showSellBottomSheet(context);
              } else {
                navBarConfig.onItemSelected(index);
              }
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              padding: EdgeInsets.all(12),
              height: 45,
              decoration: BoxDecoration(
                color: isSelected ? Colors.white : AppColors.blackColorIcon,
                borderRadius: BorderRadius.circular(100.r),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    isSelected ? item.icon : item.inactiveIcon,
                    if (isSelected) ...[
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
    );
  }
}

void _showSellBottomSheet(
  BuildContext context,
) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
    ),
    builder: (ctx) => Padding(
      padding: EdgeInsets.all(16.r),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(children: [
            const Spacer(),
            CustomText(
              text: "sell".tr(),
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
            ),
            const Spacer(),
            GestureDetector(
              onTap: () => Navigator.pop(ctx),
              child: Icon(Icons.close, size: 24.sp),
            ),
          ]),
          SizedBox(height: 10.h),
          ListTile(
            leading: Icon(Icons.local_offer, size: 24.sp),
            title: CustomText(text: "create_product".tr(), fontSize: 16.sp),
            onTap: () {
              Navigator.pop(ctx);
              // Get.to(() => const CreateProductScreen());
            },
          ),
          ListTile(
            leading: Icon(Icons.play_circle_fill, size: 24.sp),
            title: CustomText(text: "schedule_show".tr(), fontSize: 16.sp),
            onTap: () {
              Navigator.pop(ctx);
              // Get.to(() => LiveStreamingScreen(...));
            },
          ),
          ListTile(
            leading: Icon(Icons.store, size: 24.sp),
            title: CustomText(text: "seller_hub".tr(), fontSize: 16.sp),
            subtitle: CustomText(
              text: "seller_hub_subtitle".tr(),
              fontSize: 12.sp,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.pop(ctx);
              // Get.to(() => const MyProductsScreen());
            },
          ),
        ],
      ),
    ),
  );
}
