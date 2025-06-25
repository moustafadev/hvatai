part of 'customs.dart';

class CustomDropdown extends StatelessWidget {
  final String? value;
  final List<DropdownMenuItem<String>> items;
  final ValueChanged<String?> onChanged;
  final String hintText;

  const CustomDropdown({
    super.key,
    required this.value,
    required this.items,
    required this.onChanged,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        isExpanded: true,
        value: value,
        onChanged: onChanged,
        items: items,
        hint: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text(
            hintText,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
        ),
        buttonStyleData: ButtonStyleData(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.transparent,
              width: 0,
            ),
          ),
        ),
        iconStyleData: IconStyleData(
          icon: Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 20,
            color: Colors.grey.shade600,
          ),
        ),
        dropdownStyleData: DropdownStyleData(
          maxHeight: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          offset: const Offset(0, 0),
          scrollbarTheme: ScrollbarThemeData(
            radius: const Radius.circular(40),
            thickness: WidgetStateProperty.all<double>(4),
            thumbVisibility: WidgetStateProperty.all<bool>(true),
          ),
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 40,
          padding: EdgeInsets.symmetric(horizontal: 12),
        ),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }
}
