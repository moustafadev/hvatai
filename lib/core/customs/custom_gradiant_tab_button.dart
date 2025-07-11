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
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        decoration: BoxDecoration(
          color: AppColors.gray,
          borderRadius: BorderRadius.circular(10.r),
          border: isSelected
              ? Border.all(color: AppColors.primaryColor, width: 1)
              : Border.all(color: Colors.transparent),
        ),
        child: Center(
          child: CustomText(
            text: text,
            fontSize: 14.sp,
            color: AppColors.blackDark,
            fontFamily: "Manrope",
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
