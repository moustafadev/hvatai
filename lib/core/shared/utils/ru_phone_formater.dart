import 'package:flutter/services.dart';

class RuPhoneFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final isDeleting = newValue.text.length < oldValue.text.length;

    var digits = newValue.text.replaceAll(RegExp(r'\D'), '');

    if (digits.isEmpty) {
      return const TextEditingValue(
        text: '',
        selection: TextSelection.collapsed(offset: 0),
      );
    }

    // normalize first digit
    if (digits[0] == '9') digits = '7$digits';
    if (digits[0] == '8') digits = '8${digits.substring(1)}';
    if (digits[0] != '7' && digits[0] != '8') digits = '7$digits';

    final is8 = digits.startsWith('8');
    final prefix = is8 ? '8' : '+7';

    // format based on digits after first
    final d = digits.substring(1);

    final buf = StringBuffer('$prefix ');

    if (d.isNotEmpty) {
      buf.write('(');
      buf.write(d.substring(0, d.length.clamp(0, 3)));
    }
    if (d.length >= 3) buf.write(') ');
    if (d.length > 3) buf.write(d.substring(3, d.length.clamp(3, 6)));
    if (d.length >= 6) buf.write('-${d.substring(6, d.length.clamp(6, 8))}');
    if (d.length >= 8) buf.write('-${d.substring(8, d.length.clamp(8, 10))}');

    var text = buf.toString();

    // ✅ when deleting, remove trailing separators so backspace keeps working
    if (isDeleting) {
      text = text.replaceAll(RegExp(r'[\s\-\(\)]+$'), '');
    }

    return TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}
