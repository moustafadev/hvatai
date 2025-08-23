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
      suffixIcon: const Icon(Icons.calendar_month_outlined),
      onTap: () async {
        // Step 1: Pick the date
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime(2100),
        );

        if (pickedDate != null) {
          // Step 2: Pick the time
          TimeOfDay? pickedTime = await showTimePicker(
            context: context,
            initialTime: TimeOfDay.now(),
          );

          if (pickedTime != null) {
            final fullDateTime = DateTime(
              pickedDate.year,
              pickedDate.month,
              pickedDate.day,
              pickedTime.hour,
              pickedTime.minute,
            );

            final formatted =
                DateFormat('dd.MM.yyyy HH:mm').format(fullDateTime);
            _controller.text = formatted;

            // send as ISO 8601 UTC
            widget.onChanged?.call(fullDateTime.toUtc().toIso8601String());
          }
        }
      },
    );
  }
}
