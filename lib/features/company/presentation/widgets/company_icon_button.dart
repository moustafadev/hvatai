part of '../company.dart';

class _CompanyIconButton extends StatelessWidget {
  const _CompanyIconButton({
    required this.onTap,
    required this.asset,
    this.background,
  });

  final VoidCallback onTap;
  final String asset;
  final Color? background;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 36.w,
        height: 36.h,
        decoration: BoxDecoration(
          color: background ?? AppColors.greyButton,
          borderRadius: BorderRadius.circular(100.r),
        ),
        padding: EdgeInsets.all(8.r),
        child: Image.asset(asset),
      ),
    );
  }
}
