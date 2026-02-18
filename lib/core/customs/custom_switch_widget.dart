part of 'customs.dart';

class CustomSwitchWidget extends StatelessWidget {
  const CustomSwitchWidget(
      {super.key,
      required this.title,
      this.fontWeight,
      required this.value,
      this.size,
      required this.onChanged});
  final String title;
  final bool value;
  final FontWeight? fontWeight;

  final double? size;
  final Function(bool) onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: CustomText(
          text: title,
          fontSize: size ?? 16.sp,
          fontWeight: fontWeight ?? FontWeight.w700,
        ),
      ),
      16.pw,
      CupertinoSwitch(
        value: value,
        activeTrackColor: AppColors.primary,
        onChanged: onChanged,
      ),
    ]);
  }
}
