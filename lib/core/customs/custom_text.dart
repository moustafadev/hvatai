part of 'customs.dart';

class CustomText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final TextAlign? textAlign;
  final double? letterSpacing;
  final double? height;
  final double? wordSpacing;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextDecorationStyle? decorationStyle;
  final String? fontFamily;

  const CustomText({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.w500,
    this.fontSize = 14,
    this.color = const Color(0xFF2A2A2A),
    this.textAlign,
    this.letterSpacing,
    this.maxLines,
    this.decorationStyle,
    this.overflow,
    this.height,
    this.wordSpacing,
    this.fontFamily = "Manrope",
  });

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle;

    // Use the specified font family
    switch (fontFamily) {
      case 'Manrope':
        textStyle = manropeTextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
          letterSpacing: letterSpacing,
          height: height,
          wordSpacing: wordSpacing,
        );
        break;
      case 'MontserratAlternates':
        textStyle = montserratAlternatesTextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
          letterSpacing: letterSpacing,
          height: height,
          wordSpacing: wordSpacing,
        );
        break;
      default:
        textStyle = manropeTextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
          letterSpacing: letterSpacing,
          height: height,
          wordSpacing: wordSpacing,
        );
    }

    return Text(
      text,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: true,
      style: textStyle,
    );
  }

  // Helper method for Manrope text style
  static TextStyle manropeTextStyle({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    double? letterSpacing,
    double? height,
    double? wordSpacing,
  }) {
    return TextStyle(
      fontFamily: 'Manrope',
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing,
      height: height,
      wordSpacing: wordSpacing,
    );
  }

  // Helper method for Montserrat Alternates text style
  static TextStyle montserratAlternatesTextStyle({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    double? letterSpacing,
    double? height,
    double? wordSpacing,
  }) {
    return GoogleFonts.montserratAlternates(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing,
      height: height,
      wordSpacing: wordSpacing,
    );
  }
}
