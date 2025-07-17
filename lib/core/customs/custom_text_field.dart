part of 'customs.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool isRequired;
  final int? maxLines;
  final AutovalidateMode? autovalidateMode;
  final TextEditingController? controller;
  final bool isPassword;
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
  final List<TextInputFormatter>? inputFormatters;

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
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardType,
    this.onChanged,
    this.readOnly = false,
    this.fillColor,
    this.borderRadius,
    this.borderSide,
    this.height,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextFormField(
        maxLines: maxLines ?? 1,
        minLines: maxLines ?? 1,
        controller: controller,
        obscureText: obscureText,
        readOnly: readOnly,
        validator: validator,
        autovalidateMode: autovalidateMode,
        keyboardType: keyboardType,
        onChanged: onChanged,
        inputFormatters: inputFormatters,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          hintText: isRequired ? '$hintText *' : hintText,
          hintStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey,
            fontSize: 16,
          ),
          filled: true,
          fillColor: fillColor ?? Colors.white,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          border: OutlineInputBorder(
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
        ),
      ),
    );
  }
}
