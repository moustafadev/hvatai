part of 'customs.dart';

class CustomItemFourContainer extends StatelessWidget {
  final String text;
  final String assetPath;
  final VoidCallback? onTap;

  const CustomItemFourContainer({
    super.key,
    required this.text,
    required this.assetPath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                offset: Offset(2, 2),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                assetPath,
                height: 28.h,
                width: 28.w,
              ),
              12.ph,
              CustomText(
                text: text.tr(),
                fontSize: 14.sp,
                color: AppColors.blackDark,
                fontWeight: FontWeight.w800,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
