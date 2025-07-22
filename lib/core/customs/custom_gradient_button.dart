part of 'customs.dart';

class CustomGradientButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final double width;
  final double height;
  final double borderRadius;
  final double fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final Color? buttonColor;
  final Color? textColor;
  final bool isDisabled;
  final bool isLoading;

  const CustomGradientButton({
    super.key,
    required this.text,
    this.onPressed,
    this.buttonColor,
    this.textColor,
    this.width = double.infinity,
    this.height = 52,
    this.borderRadius = 10,
    this.isDisabled = false,
    this.fontSize = 16,
    this.fontWeight,
    this.fontFamily,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: isDisabled
            ? buttonColor ?? AppColors.disabledColor
            : buttonColor ?? AppColors.primaryColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(borderRadius),
          onTap: isDisabled || isLoading ? null : onPressed,
          child: Center(
            child: isLoading
                ? SizedBox(
                    height: 25,
                    width: 25,
                    child: CircularProgressIndicator(
                      color: textColor ?? AppColors.white,
                      strokeWidth: 2.5,
                    ),
                  )
                : CustomText(
                    textAlign: TextAlign.center,
                    text: text,
                    color: textColor ?? AppColors.white,
                    fontSize: fontSize,
                    fontFamily: fontFamily,
                    fontWeight: fontWeight ?? FontWeight.bold,
                  ),
          ),
        ),
      ),
    );
  }
}
