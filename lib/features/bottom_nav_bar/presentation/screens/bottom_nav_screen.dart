part of '../bottom_nav.dart';

class BottomNavScreen extends StatelessWidget {
  const BottomNavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<BottomNavCubit>(),
      child: BlocBuilder<BottomNavCubit, BottomNavState>(
        builder: (context, state) {
          final cubit = context.read<BottomNavCubit>();
          final screens = [
            // HomeMainScreen(),
            // SearchScreen(),
            SizedBox(), // Sell tab
            SizedBox(), // Sell tab
            SizedBox(), // Sell tab
            SizedBox(), // Sell tab
            SizedBox(), // Sell tab

            SizedBox(), // Sell tab
            // ActivityScreen(),
            // ProfileScreen(),
          ];
          return Scaffold(
            body: IndexedStack(index: state.selectedIndex, children: screens),
            bottomNavigationBar: CustomBottomNavBar(
              selectedIndex: state.selectedIndex,
              onTap: (index) {
                if (index == 2) {
                  _showSellBottomSheet(context, cubit, state);
                } else {
                  cubit.selectTab(index);
                }
              },
            ),
          );
        },
      ),
    );
  }

  void _showSellBottomSheet(
    BuildContext context,
    BottomNavCubit cubit,
    BottomNavState state,
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
}
