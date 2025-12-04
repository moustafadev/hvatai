part of '../wallet.dart';

/// Tips section widget for the wallet screen
/// Displays a tappable row with tips icon and navigation arrow
class WalletTipsSection extends StatelessWidget {
  const WalletTipsSection({
    super.key,
    this.onTap,
  });

  /// Optional callback for when the tips section is tapped
  /// If not provided, defaults to a no-op function
  final VoidCallback? onTap;

  /// Handles the tap event on the tips section
  void _handleTap() {
    if (onTap != null) {
      onTap!();
    } else {
      // Navigate to tips screen if needed
      // TODO: Implement navigation to tips screen
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                Assets.assetsIconsTips2,
                width: 24.w,
                height: 24.h,
              ),
              12.pw,
              CustomText(
                text: 'tips'.tr(),
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: const Color(0xFF2A2A2A),
          ),
        ],
      ),
    );
  }
}
