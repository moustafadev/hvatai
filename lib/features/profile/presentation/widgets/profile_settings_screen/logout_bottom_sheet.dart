part of '../../profile.dart';

class LogoutBottomSheet extends StatelessWidget {
  const LogoutBottomSheet({super.key, required this.onLogout});

  final VoidCallback onLogout;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
      ),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 8,
            ),
            Center(
              child: Container(
                height: 4.h,
                width: 40.w,
                decoration: BoxDecoration(
                  color: AppColors.greyButton,
                  borderRadius: BorderRadius.circular(100.r),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  20.ph,
                  // Title
                  CustomText(
                    text: 'alreadyLeaving'.tr(),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w800,
                    textAlign: TextAlign.center,
                  ),
                  24.ph,
                  // Остаться button (Stay)
                  CustomGradientButton(
                    text: 'stay'.tr(),
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  12.ph,
                  // Exit button (Exit)
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                      onLogout();
                    },
                    child: Container(
                      height: 42,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.greyButton,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Center(
                        child: CustomText(
                          text: 'exit'.tr(),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  20.ph,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void showLogoutBottomSheet(BuildContext context, VoidCallback onLogout) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
    ),
    builder: (context) => LogoutBottomSheet(onLogout: onLogout),
  );
}
