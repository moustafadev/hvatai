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

  const CustomGradientButton(
      {super.key,
      required this.text,
      this.onPressed,
      this.width = double.infinity,
      this.height = 52,
      this.borderRadius = 10,
      this.fontSize = 16,
      this.fontWeight,
      this.fontFamily});

  @override
  Widget build(BuildContext context) {
    final bool isDisabled = onPressed == null;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: isDisabled
            ? LinearGradient(
                colors: [
                  Colors.grey.shade400,
                  Colors.grey.shade500,
                ],
              )
            : LinearGradient(
                colors: [
                  AppColors.blueLite,
                  AppColors.purpleLite,
                  AppColors.deepPurple
                ],
              ),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Material(
        color: Colors.transparent, // Makes sure ripple effect is visible
        child: InkWell(
          borderRadius: BorderRadius.circular(borderRadius),
          onTap: onPressed,
          child: Center(
            child: Text(
              textAlign: TextAlign.center,
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: fontSize,
                fontFamily: fontFamily,
                fontWeight: fontWeight ?? FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
