part of 'customs.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool isRequired;
  final int? maxLines;
  final AutovalidateMode? autovalidateMode;
  final TextEditingController? controller;
  final bool isPassword;
  final String? initialValue;
  final void Function()? onTap;
  final bool obscureText;
  final bool readOnly;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final Color? fillColor;
  final BorderRadius? borderRadius;
  final BorderSide? borderSide;
  final double? height;
  final TextStyle? hintStyle;
  final List<TextInputFormatter>? inputFormatters;
  final Color? textColor;
  final Color? hintColor;
  final TextInputAction? textInputAction;
  final int? maxLength;
  final ValueChanged<String>? onSubmitted;
  final EdgeInsets? contentPadding;
  final ValueChanged<String>? onFieldSubmitted;
  final FocusNode? focusNode;
  final TextStyle? style;
  final bool enabled;
  const CustomTextField({
    super.key,
    required this.hintText,
    this.isRequired = false,
    this.maxLines,
    this.autovalidateMode,
    this.controller,
    this.isPassword = false,
    this.obscureText = false,
    this.validator,
    this.hintStyle,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardType,
    this.onChanged,
    this.readOnly = false,
    this.initialValue,
    this.fillColor,
    this.borderRadius,
    this.borderSide,
    this.height,
    this.inputFormatters,
    this.onTap,
    this.textColor,
    this.hintColor,
    this.textInputAction,
    this.maxLength,
    this.onSubmitted,
    this.contentPadding,
    this.onFieldSubmitted,
    this.focusNode,
    this.style,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextFormField(
        key: key,
        maxLines: maxLines ?? 1,
        minLines: maxLines ?? 1,
        cursorColor: Colors.black,
        onTap: onTap,
        focusNode: focusNode,
        controller: controller,
        obscureText: obscureText,
        readOnly: readOnly,
        validator: validator,
        initialValue: controller == null ? initialValue : null,
        autovalidateMode: autovalidateMode,
        keyboardType: keyboardType,
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        textInputAction: textInputAction,
        inputFormatters: inputFormatters,
        maxLength: maxLength,
        style: style ??
            TextStyle(
                color: textColor ?? AppColors.text,
                fontWeight: FontWeight.w600,
                fontSize: 14),
        decoration: InputDecoration(
          hintText: isRequired ? '$hintText*' : hintText,
          hintStyle: TextStyle(
            fontWeight: hintStyle?.fontWeight ?? FontWeight.w600,
            color: hintColor ?? AppColors.blackColor.withValues(alpha: 0.2),
            fontSize: hintStyle?.fontSize ?? 14,
          ),
          filled: true,
          fillColor: fillColor ?? Colors.white,
          contentPadding: contentPadding ??
              const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          border: OutlineInputBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(10),
            borderSide: borderSide ?? BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(10),
            borderSide: borderSide ?? BorderSide.none,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          errorStyle: const TextStyle(
            color: Colors.redAccent,
            fontSize: 13,
          ),
          counterText: '',
        ),
      ),
    );
  }
}
