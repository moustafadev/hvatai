import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/extensions/size_extension.dart';

/// Header widget for the orders screen
/// Displays the app bar and orders title
class OrdersHeader extends StatelessWidget {
  const OrdersHeader({
    super.key,
    this.showAppBar = true,
  });

  /// Whether to show the app bar
  /// When true, displays the CustomAppBar above the title
  /// When false, only displays the orders title
  final bool showAppBar;

  /// Gets the spacing after the title based on whether app bar is shown
  double get _titleSpacing => showAppBar ? 16.h : 8.h;

  /// Gets the spacing after the app bar
  double get _appBarSpacing => 12.h;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showAppBar) ...[
          CustomAppBar(
            showSearch: false,
            showNotification: false,
            showGift: false,
            padding: const EdgeInsets.only(top: 8),
          ),
          _appBarSpacing.ph,
        ],
        CustomText(
          text: 'orders'.tr(),
          fontSize: 20.sp,
          fontWeight: FontWeight.w800,
        ),
        _titleSpacing.ph,
      ],
    );
  }
}
