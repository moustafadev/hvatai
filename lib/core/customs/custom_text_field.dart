part of 'customs.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.isRequired = false,
    this.controller,
    this.autovalidateMode,
    this.isPassword = false,
    this.obscureText = false,
    this.readOnly = false,
    this.validator,
    this.suffixIcon,
    this.prefixIcon,
    this.prefix,
    this.suffix,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.focusNode,
    this.onSaved,
    this.maxLines = 1,
    this.style,
    this.hintStyle,
    this.textInputAction = TextInputAction.next,
    this.showCursor = true,
    this.inputFormatters,
    this.enabled = true,
    this.borderRadius = 10,
    this.fillColor = Colors.white,
    this.colorOutlineInputBorder = Colors.grey,
    this.verticalPadding,
    this.textAlign = TextAlign.start,
    this.maxLength,
    this.buildCounter,
    this.textFieldKey,
    this.onTap,
  });

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
  final Widget? prefix;
  final Widget? suffix;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  final FocusNode? focusNode;
  final Function(String?)? onSaved;
  final int? maxLines;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final TextInputAction textInputAction;
  final bool showCursor;
  final List<TextInputFormatter>? inputFormatters;
  final bool enabled;
  final double borderRadius;
  final Color fillColor;
  final Color colorOutlineInputBorder;
  final double? verticalPadding;
  final TextAlign textAlign;
  final int? maxLength;
  final Widget? Function(BuildContext,
      {required int currentLength,
      required bool isFocused,
      required int? maxLength})? buildCounter;
  final GlobalKey<FormFieldState>? textFieldKey;
  final Function()? onTap;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _obscureText;
  late Widget _suffixIcon;
  String? _errorText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
    _suffixIcon = widget.isPassword
        ? _defaultSuffixIcon()
        : (widget.suffixIcon ?? const SizedBox());
  }

  Widget _defaultSuffixIcon() {
    return IconButton(
      icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
      onPressed: () {
        setState(() {
          _obscureText = !_obscureText;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(widget.borderRadius),
      borderSide: BorderSide(color: widget.colorOutlineInputBorder),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          key: widget.textFieldKey,
          controller: widget.controller,
          obscureText: widget.isPassword ? _obscureText : widget.obscureText,
          readOnly: widget.readOnly,
          validator: (value) {
            final error = widget.validator?.call(value);
            setState(() => _errorText = error);
            return error;
          },
          onTap: widget.onTap,
          autovalidateMode: widget.autovalidateMode,
          keyboardType: widget.keyboardType,
          onChanged: widget.onChanged,
          style: widget.style ?? const TextStyle(color: Colors.black),
          focusNode: widget.focusNode,
          onSaved: widget.onSaved,
          maxLines: widget.maxLines,
          showCursor: widget.showCursor,
          inputFormatters: widget.inputFormatters,
          enabled: widget.enabled,
          textAlign: widget.textAlign,
          textInputAction: widget.textInputAction,
          maxLength: widget.maxLength,
          buildCounter: widget.buildCounter,
          decoration: InputDecoration(
            filled: true,
            fillColor: widget.fillColor,
            contentPadding: EdgeInsets.only(
              left: 12,
              top: widget.verticalPadding ?? 16,
              bottom: widget.verticalPadding ?? 16,
            ),
            hintText: widget.hintText,
            hintStyle: widget.hintStyle ??
                const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
            prefixIcon: widget.prefixIcon,
            prefix: widget.prefix,
            suffixIcon: _suffixIcon,
            suffix: widget.suffix,
            errorText: _errorText,
            errorStyle: const TextStyle(
              color: Colors.redAccent,
              fontSize: 13,
            ),
            border: border,
            enabledBorder: border,
            focusedBorder: border,
            errorBorder: border.copyWith(
              borderSide: const BorderSide(color: Colors.red),
            ),
            focusedErrorBorder: border.copyWith(
              borderSide: const BorderSide(color: Colors.redAccent),
            ),
          ),
        ),
        if (_errorText != null && _errorText!.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              _errorText!,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.redAccent,
              ),
            ),
          ),
      ],
    );
  }
}
