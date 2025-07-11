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
  const CustomGradientButton(
      {super.key,
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
      this.fontFamily});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: isDisabled
            ? buttonColor ?? AppColors.primaryColor
            : AppColors.disabledColor,
        // gradient: isDisabled
        //     ? LinearGradient(
        //         colors: [
        //           Colors.grey.shade400,
        //           Colors.grey.shade500,
        //         ],
        //       )
        //     : LinearGradient(
        //         colors: [
        //           AppColors.blueLite,
        //           AppColors.purpleLite,
        //           AppColors.deepPurple
        //         ],
        //       ),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Material(
        color: Colors.transparent, // Makes sure ripple effect is visible
        child: InkWell(
          borderRadius: BorderRadius.circular(borderRadius),
          onTap: isDisabled ? onPressed : null,
          child: Center(
            child: CustomText(
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
