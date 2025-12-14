part of 'customs.dart';

class CustomSelectGender extends StatelessWidget {
  final String? value;
  final Function(String?) onChanged;
  final String? hintText;
  final List<String> items;

  // Gender keys that map to translations
  static const List<String> _genderKeys = ['Male', 'Female'];

  const CustomSelectGender({
    super.key,
    required this.value,
    required this.onChanged,
    this.hintText,
    this.items = _genderKeys,
  });

  Icon? _getIcon(String? gender) {
    switch (gender) {
      case 'Male':
        return const Icon(Icons.male);
      case 'Female':
        return const Icon(Icons.female);
    
      default:
        return null;
    }
  }

  String _getTranslatedLabel(String key) {
    switch (key) {
      case 'Male':
        return 'male'.tr();
      case 'Female':
        return 'female'.tr();
      default:
        return key;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomDropdown(
      hintText: hintText ?? 'selectGender'.tr(),
      value: value,
      prefix: _getIcon(value),
      onChanged: onChanged,
      items: items
          .map(
            (val) => DropdownMenuItem<String>(
              value: val,
              child: Text(_getTranslatedLabel(val)),
            ),
          )
          .toList(),
    );
  }
}
