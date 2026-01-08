part of '../../../profile/presentation/profile.dart';

class CartItemActionsButton extends StatelessWidget {
  const CartItemActionsButton(
      {super.key,
      required this.icon,
      required this.onTap,
      required this.iconColor});
  final IconData icon;

  final VoidCallback onTap;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        size: 30,
        icon,
        color: iconColor,
      ),
    );
  }
}
