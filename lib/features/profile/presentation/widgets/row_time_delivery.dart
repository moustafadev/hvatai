part of '../profile.dart';

class RowTimeDelivery extends StatelessWidget {
  const RowTimeDelivery({
    super.key,
    required this.onSelectTime,
    required this.selectedTime,
  });

  final Function(String) onSelectTime;
  final String selectedTime;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _timeOption('15-20 min'),
        7.pw,
        _timeOption('30-40 min'),
        7.pw,
        _timeOption('1 h'),
      ],
    );
  }

  Widget _timeOption(String time) {
    final isSelected = selectedTime == time;
    final borderColor = isSelected ? AppColors.blackDark : AppColors.grey;
    final textColor = isSelected ? AppColors.blackDark : AppColors.grey;

    return GestureDetector(
      onTap: () => onSelectTime(time),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: borderColor, width: 2),
        ),
        child: CustomText(
          text: time.tr(),
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
          color: textColor,
        ),
      ),
    );
  }
}
