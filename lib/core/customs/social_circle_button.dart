part of 'customs.dart';

class SocialCircleButton extends StatelessWidget {
  final VoidCallback onTap;
  final String assetPath;
  final Color backgroundColor;
  final Color iconColor;

  const SocialCircleButton({
    super.key,
    required this.onTap,
    required this.assetPath,
    this.backgroundColor = AppColors.primaryColor,
    this.iconColor = AppColors.white,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 24.r,
        backgroundColor: backgroundColor,
        child: Center(
          child: Image.asset(
            assetPath,
            height: 24.h,
            width: 24.w,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
