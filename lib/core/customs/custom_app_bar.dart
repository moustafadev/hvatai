part of 'customs.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool centerTitle;
  final VoidCallback? onBack;
  final bool showBackButton;
  final Color backgroundColor;
  final Color titleColor;
  final double elevation;

  const CustomAppBar({
    super.key,
    required this.title,
    this.centerTitle = true,
    this.onBack,
    this.showBackButton = true,
    this.backgroundColor = Colors.white,
    this.titleColor = Colors.black,
    this.elevation = 0,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: centerTitle,
      elevation: elevation,
      title: CustomText(
        text: title,
        fontSize: 18,
        fontFamily: "Gilroy-Bold",
        fontWeight: FontWeight.bold,
        color: titleColor,
      ),
      leading: showBackButton
          ? IconButton(
              icon: const Icon(Icons.arrow_back_ios,
                  color: AppColors.blackColorIcon),
              onPressed: onBack ?? () => Navigator.pop(context),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
