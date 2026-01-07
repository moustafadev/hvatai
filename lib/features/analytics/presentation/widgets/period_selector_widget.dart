part of '../analytics.dart';

class PeriodSelectorWidget extends StatelessWidget {
  const PeriodSelectorWidget({
    super.key,
    required this.selectedIndex,
    required this.onPeriodChanged,
  });

  final int selectedIndex;
  final ValueChanged<int> onPeriodChanged;

  final List<String> _periods = const [
    'Неделя',
    'Месяц',
    'Квартал',
    'Год',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: AppColors.blackDark,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: List.generate(
          _periods.length,
          (index) => Expanded(
            child: GestureDetector(
              onTap: () => onPeriodChanged(index),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                decoration: BoxDecoration(
                  color: selectedIndex == index
                      ? AppColors.white
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Center(
                  child: CustomText(
                    text: _periods[index],
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: selectedIndex == index
                        ? AppColors.blackDark
                        : AppColors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
