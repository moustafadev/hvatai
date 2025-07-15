part of 'customs.dart';

class CustomSelectGender extends StatelessWidget {
  final String? value;
  final Function(String?) onChanged;
  final String hintText;
  final List<String> items;

  const CustomSelectGender({
    super.key,
    required this.value,
    required this.onChanged,
    this.hintText = 'Select Gender',
    this.items = const ['Male', 'Female', 'Other'],
  });

  Icon? _getIcon(String? gender) {
    switch (gender) {
      case 'Male':
        return const Icon(Icons.male);
      case 'Female':
        return const Icon(Icons.female);
      case 'Other':
        return const Icon(Icons.transgender);
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomDropdown(
      hintText: hintText,
      value: value,
      prefix: _getIcon(value),
      onChanged: onChanged,
      items: items
          .map(
            (val) => DropdownMenuItem<String>(
              value: val,
              child: Text(val),
            ),
          )
          .toList(),
    );
  }
}
