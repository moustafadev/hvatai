part of '../../auth.dart';

class GradientCheckbox extends StatelessWidget {
  final bool selected;
  final VoidCallback onTap;

  const GradientCheckbox({
    super.key,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 22.w,
        height: 22.h,
        margin: EdgeInsets.only(right: 12.h),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(
            color: AppColors.blackLite,
            width: 1,
          ),
        ),
        child: selected
            ? Center(
                child: Container(
                  width: 14.w,
                  height: 14.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primaryColor,
                  ),
                ),
              )
            : null,
      ),
    );
  }
}
