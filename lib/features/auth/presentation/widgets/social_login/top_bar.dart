part of '../../auth.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () => context.push(AppRoutes.registration),
            child: Row(
              children: [
                CustomText(
                  text: 'register'.tr(),
                  color: AppColors.primaryPink,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  //fontFamily: 'MontserratAlternates',
                ),
                const Icon(Icons.arrow_forward_ios_rounded,
                    color: AppColors.primaryPink, size: 15),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
