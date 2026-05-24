import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/extensions/size_extension.dart';
import 'package:hvatai/core/theme/app_colors.dart';
import 'package:hvatai/core/theme/assets.dart';

/// Payment method values used with checkout APIs.
abstract final class PaymentMethodType {
  static const String wallet = 'wallet';
  static const String card = 'tinkoff';
  static const String sbp = 'tinkoff_sbp';
}

class PaymentMethodsSection extends StatelessWidget {
  const PaymentMethodsSection({
    super.key,
    required this.selectedPaymentMethod,
    this.onWalletTap,
    this.onCardTap,
    this.onSbpTap,
    this.onAddPaymentTap,
    this.showCardOption = true,
    this.showSbpOption = true,
    this.sbpMethodValue = PaymentMethodType.sbp,
  });

  final String selectedPaymentMethod;
  final VoidCallback? onWalletTap;
  final VoidCallback? onCardTap;
  final VoidCallback? onSbpTap;
  final VoidCallback? onAddPaymentTap;
  final bool showCardOption;
  final bool showSbpOption;

  /// API value for SBP (cart: `tinkoff_sbp`, bid flow: `sbp`).
  final String sbpMethodValue;

  bool get _isWalletSelected =>
      selectedPaymentMethod == PaymentMethodType.wallet;

  bool get _isCardSelected => selectedPaymentMethod == PaymentMethodType.card;

  bool get _isSbpSelected =>
      selectedPaymentMethod == sbpMethodValue || selectedPaymentMethod == 'sbp';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (onWalletTap != null)
          GestureDetector(
            onTap: onWalletTap,
            child: Row(
              children: [
                Container(
                  width: 48.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                    color: AppColors.greyButton,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset(
                      Assets.assetsImagesWalletIcon,
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                ),
                12.pw,
                Expanded(
                  child: CustomText(
                    text: 'Кошелёк',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                CustomRadioButton(isSelected: _isWalletSelected),
              ],
            ),
          ),
        if (showSbpOption && onSbpTap != null) ...[
          8.ph,
          GestureDetector(
            onTap: onSbpTap,
            child: _PaymentMethodRow(
              label: 'СБП',
              iconPath: Assets.assetsIconsSbp,
              isSelected: _isSbpSelected,
            ),
          ),
        ],
        if (showCardOption && onCardTap != null) ...[
          8.ph,
          GestureDetector(
            onTap: onCardTap,
            child: _PaymentMethodRow(
              label: 'Карта',
              iconPath: Assets.assetsIconsCard,
              isSelected: _isCardSelected,
            ),
          ),
        ],
        if (onAddPaymentTap != null) ...[
          8.ph,
          Divider(
            height: 1,
            color: AppColors.gray,
            thickness: 1,
          ),
          12.ph,
          // GestureDetector(
          //   onTap: onAddPaymentTap,
          //   child: Row(
          //     children: [
          //       SvgPicture.asset(
          //         Assets.assetsIconsCardAdd,
          //         width: 24.w,
          //         height: 24.h,
          //       ),
          //       12.pw,
          //       Expanded(
          //         child: CustomText(
          //           text: 'addPaymentMethod'.tr(),
          //           fontSize: 14.sp,
          //           fontWeight: FontWeight.w600,
          //         ),
          //       ),
          //       Icon(
          //         Icons.chevron_right,
          //         color: AppColors.blackDark,
          //         size: 20.sp,
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ],
    );
  }
}

class _PaymentMethodRow extends StatelessWidget {
  const _PaymentMethodRow({
    required this.label,
    required this.iconPath,
    this.isSelected = false,
  });

  final String label;
  final String iconPath;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 48.w,
          height: 48.h,
          decoration: BoxDecoration(
            color: AppColors.greyButton,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: iconPath.endsWith('.svg')
                ? SvgPicture.asset(
                    iconPath,
                    width: 24.w,
                    height: 24.h,
                  )
                : Image.asset(
                    iconPath,
                    width: 24.w,
                    height: 24.h,
                  ),
          ),
        ),
        12.pw,
        Expanded(
          child: CustomText(
            text: label,
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        CustomRadioButton(isSelected: isSelected),
      ],
    );
  }
}

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({
    super.key,
    required this.isSelected,
  });

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24.w,
      height: 24.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.text,
          width: 1,
        ),
      ),
      child: isSelected
          ? Center(
              child: Container(
                width: 12.w,
                height: 12.h,
                decoration: const BoxDecoration(
                  color: AppColors.purple2,
                  shape: BoxShape.circle,
                ),
              ),
            )
          : null,
    );
  }
}
