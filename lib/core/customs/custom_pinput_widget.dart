part of 'customs.dart';

class PinputWidget extends StatelessWidget {
  const PinputWidget({
    super.key,
    required this.onChanged,
    this.isError,
    this.validator,
    this.length = 4,
    this.readOnly = false,
    this.autovalidateMode,
  });

  final ValueChanged<String> onChanged;
  final bool? isError;
  final String? Function(String?)? validator;
  final int length;
  final bool readOnly;
  final AutovalidateMode? autovalidateMode;

  @override
  Widget build(BuildContext context) {
    final pinTheme = PinTheme(
      width: 64.w,
      height: 83.h,
      textStyle: TextStyle(
        color: isError == true ? Colors.red : AppColors.blackDark,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(19),
      ),
    );

    return Pinput(
      length: length,
      autofocus: true,
      onChanged: onChanged,
      validator: validator,
      readOnly: readOnly,
      defaultPinTheme: pinTheme,
      focusedPinTheme: pinTheme,
      preFilledWidget: const Text(
        '',
        style: TextStyle(
          color: AppColors.blackDark,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
