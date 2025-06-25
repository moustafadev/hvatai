part of 'customs.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool isRequired;
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

  const CustomTextField({
    super.key,
    required this.hintText,
    this.isRequired = false,
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
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      readOnly: readOnly,
      validator: validator,
      autovalidateMode: autovalidateMode,
      keyboardType: keyboardType,
      onChanged: onChanged,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        
        label: RichText(
          text: TextSpan(
            text: hintText,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
              fontSize: 16,
            ),
            children: isRequired
                ? const [
                    TextSpan(
                      text: '*',
                      style: TextStyle(color: Colors.red),
                    ),
                  ]
                : [],
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never, // prevent float
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        errorStyle: const TextStyle(
          color: Colors.redAccent,
          fontSize: 13,
        ),
      ),
    );
  }
}
