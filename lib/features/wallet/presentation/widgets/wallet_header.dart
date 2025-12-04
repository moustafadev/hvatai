part of '../wallet.dart';

/// Header widget for the wallet screen
/// Displays a back button and the wallet title
class WalletHeader extends StatelessWidget {
  const WalletHeader({
    super.key,
    this.onBackPressed,
  });

  /// Optional callback for back button press
  /// If not provided, defaults to popping the current route
  final VoidCallback? onBackPressed;

  /// Calculates the top padding including safe area
  double _getTopPadding(BuildContext context) {
    return MediaQuery.of(context).padding.top + 12.h;
  }

  /// Handles the back button press
  void _handleBackPress(BuildContext context) {
    if (onBackPressed != null) {
      onBackPressed!();
    } else {
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: _getTopPadding(context),
        bottom: 24.h,
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => _handleBackPress(context),
            child: Icon(
              Icons.arrow_back_ios,
              color: AppColors.blackColorIcon,
              size: 20.sp,
            ),
          ),
          12.pw,
          CustomText(
            text: 'wallet'.tr(),
            fontSize: 20.sp,
            fontWeight: FontWeight.w800,
          ),
        ],
      ),
    );
  }
}
