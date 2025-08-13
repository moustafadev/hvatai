part of 'customs.dart';

class CustomDateField extends StatefulWidget {
  final TextEditingController? controller;
  final Function(String val)? onChanged;
  final Function()? onTap;
  final String? Function(String?)? validator;
  final String label;
  final bool readOnly;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final TextInputAction textInputAction;

  const CustomDateField({
    super.key,
    this.controller,
    this.onChanged,
    this.onTap,
    this.validator,
    this.label = "",
    this.readOnly = true,
    this.style,
    this.hintStyle,
    this.textInputAction = TextInputAction.next,
  });

  @override
  State<CustomDateField> createState() => _CustomDateFieldState();
}

class _CustomDateFieldState extends State<CustomDateField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: _controller,
      readOnly: widget.readOnly,
      borderRadius: BorderRadius.circular(10),
      hintText: widget.label,
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime(2100),
        );
        if (pickedDate != null) {
          String formattedDate = DateFormat('dd.MM.yyyy').format(pickedDate);
          _controller.text = formattedDate;
          widget.onChanged?.call(formattedDate);
        }
      },
    );
  }
}
