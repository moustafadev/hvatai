part of '../stream.dart';

class PostAuctionButton extends StatelessWidget {
  const PostAuctionButton({
    super.key,
    required this.label,
    required this.backgroundColor,
    required this.textColor,
    this.onPressed,
  });

  final String label;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CustomButton(
        title: label,
        onPressed: onPressed,
        color: backgroundColor,
        textColor: textColor,
        radius: 10,
        height: 48,
        fontWeight: FontWeight.w700,
        fontSize: 16,
      ),
    );
  }
}

