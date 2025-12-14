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
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Container(
                  height: 4.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    color: AppColors.gray,
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                ),
              ),
              20.ph,
              // Title
              CustomText(
                text: 'Уже уходите?',
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.blackDark,
                textAlign: TextAlign.center,
              ),
              24.ph,
              // Остаться button (Stay)
              CustomGradientButton(
                text: 'Остаться',
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              12.ph,
              // Выйти button (Exit)
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  onLogout();
                },
                child: Container(
                  height: 42.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.greyButton,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Center(
                    child: CustomText(
                      text: 'Выйти',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.blackDark,
                    ),
                  ),
                ),
              ),
              20.ph,
            ],
          ),
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
