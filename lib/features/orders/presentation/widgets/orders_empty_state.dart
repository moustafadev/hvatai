import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/extensions/size_extension.dart';
import 'package:hvatai/core/theme/app_colors.dart';
import 'package:hvatai/core/theme/assets.dart';

/// Empty state widget for when there are no orders
/// Displays an icon, message, and retry button
class OrdersEmptyState extends StatelessWidget {
  const OrdersEmptyState({
    super.key,
    this.message,
    required this.onRefresh,
  });

  /// Optional custom message to display
  /// If null, displays the default empty title
  final String? message;

  /// Callback when retry button is pressed
  final VoidCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.assetsImagesOrderIcon,
              height: 72,
              width: 72,
            ),
            16.ph,
            CustomText(
              text: message ?? 'ordersEmptyTitle'.tr(),
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              textAlign: TextAlign.center,
            ),
            8.ph,
            CustomText(
              text: 'ordersEmptySubtitle'.tr(),
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.blackTransparent40,
              textAlign: TextAlign.center,
            ),
            24.ph,
            CustomGradientButton(
              text: 'retry'.tr(),
              onPressed: onRefresh,
              height: 48,
            ),
          ],
        ),
      ),
    );
  }
}
