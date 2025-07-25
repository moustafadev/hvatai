part of 'customs.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  final Function()? onPressed;
  final String title;
  final Color? color;
  final bool isLoading;
  final Color? textColor;
  Color? colorBorderSide;
  final Widget? widget;
  final double fontSize;
  final double elevation;
  final double? sizedBetweenIcon;
  final double radius;
  final FontWeight fontWeight;
  final EdgeInsets padding;
  final MainAxisAlignment alignmentIconText;
  final int? maxLines;
  final TextOverflow? textOverflow;
  final TextAlign? textAlign;
  final Widget? suffixIcon;
  final bool spacerInSuffixIcon;
  final bool isSizedBetweenIcon;
  final bool? disabled;
  final double? height;

  CustomButton({
    super.key,
    this.onPressed,
    required this.title,
    this.color,
    this.isLoading = false,
    this.textColor = AppColors.white,
    this.colorBorderSide,
    this.alignmentIconText = MainAxisAlignment.center,
    this.padding = const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
    this.widget,
    this.elevation = 0,
    this.sizedBetweenIcon,
    this.fontSize = AppConst.fontMedium,
    this.radius = AppConst.borderRadius,
    this.fontWeight = FontWeight.normal,
    this.maxLines,
    this.textOverflow,
    this.textAlign,
    this.suffixIcon,
    this.spacerInSuffixIcon = true,
    this.isSizedBetweenIcon = true,
    this.disabled = false,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading || disabled! ? null : onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(height ?? 40),
        backgroundColor: color ?? AppColors.hotPink,
        disabledBackgroundColor: color ?? AppColors.hotPink,
        shape: RoundedRectangleBorder(
          side: colorBorderSide != null
              ? BorderSide(width: 1, color: colorBorderSide!)
              : BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),
        padding: padding,
        textStyle: const TextStyle(fontSize: 24),
      ).merge(
        ButtonStyle(
          elevation: WidgetStateProperty.resolveWith<double>(
            (Set<WidgetState> states) {
              return elevation;
            },
          ),
        ),
      ),
      child: isLoading
          ? const SizedBox(
              height: 25.0,
              width: 25.0,
              child: CircularProgressIndicator(
                color: AppColors.white,
              ),
            )
          : Row(
              mainAxisAlignment: alignmentIconText,
              children: [
                if (widget != null) ...[
                  widget ?? const SizedBox(),
                  if (isSizedBetweenIcon) (sizedBetweenIcon ?? 10).pw,
                ],
                CustomText(
                  text: title,
                  color: disabled! ? AppColors.eerieBlack : textColor,
                  fontWeight: fontWeight,
                  textAlign: textAlign,
                  maxLines: maxLines,
                  fontFamily: 'Manrope',
                  overflow: textOverflow,
                ),
                if (suffixIcon != null) ...[
                  if (spacerInSuffixIcon) const Spacer(),
                  suffixIcon ?? const SizedBox(),
                ],
              ],
            ),
    );
  }
}
