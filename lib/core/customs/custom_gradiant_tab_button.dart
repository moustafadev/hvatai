part of 'customs.dart';

class CustomGradiantTabButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  const CustomGradiantTabButton({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          gradient: isSelected
              ? LinearGradient(
                  colors: [
                    AppColors.blueLite,
                    AppColors.purpleLite,
                    AppColors.deepPurple
                  ],
                )
              : null,
          color: isSelected ? null : Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5.r,
            ),
          ],
        ),
        child: CustomText(
          text: text,
          fontSize: 14.sp,
          color: isSelected ? AppColors.white : AppColors.blackDark,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
