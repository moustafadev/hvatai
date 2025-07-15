part of 'customs.dart';

class CustomSwitchWidget extends StatelessWidget {
  const CustomSwitchWidget(
      {super.key,
      required this.title,
      required this.value,
      required this.onChanged});
  final String title;
  final bool value;
  final Function(bool) onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      CustomText(
        text: title,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
      Spacer(),
      CupertinoSwitch(
        value: value,
        activeTrackColor: AppColors.primary,
        onChanged: onChanged,
      ),
    ]);
  }
}
