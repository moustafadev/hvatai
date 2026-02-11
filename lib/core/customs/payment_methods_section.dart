import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/extensions/size_extension.dart';
import 'package:hvatai/core/theme/app_colors.dart';
import 'package:hvatai/core/theme/assets.dart';

class PaymentMethodsSection extends StatelessWidget {
  const PaymentMethodsSection({
    super.key,
    this.onAddPaymentTap,
    this.onWalletTap,
    this.onSbpTap,
    this.walletSelected = false,
    this.sbpSelected = false,
    this.primaryMethodLabel = 'СБП',
    this.primaryMethodIconPath = Assets.assetsIconsPaymentMethod,
    this.walletBalanceOverride,
  });

  final VoidCallback? onAddPaymentTap;
  final VoidCallback? onWalletTap;
  final VoidCallback? onSbpTap;
  final bool walletSelected;
  final bool sbpSelected;
  final String primaryMethodLabel;
  final String primaryMethodIconPath;
  final String? walletBalanceOverride;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
              _CustomRadioButton(isSelected: walletSelected),
            ],
          ),
        ),
        8.ph,

        // // СБП option
        // GestureDetector(
        //   onTap: onSbpTap,
        //   child: _PrimaryMethodRow(
        //     label: primaryMethodLabel,
        //     iconPath: primaryMethodIconPath,
        //     isSelected: sbpSelected,
        //   ),
        // ),
        // // Кошелёк option
        // 8.ph,
        // Divider(
        //   height: 1,
        //   color: AppColors.gray,
        //   thickness: 1,
        // ),
        12.ph,
        if (onAddPaymentTap != null)
          GestureDetector(
            onTap: onAddPaymentTap,
            child: Row(
              children: [
                SvgPicture.asset(
                  Assets.assetsIconsCardAdd,
                  width: 24.w,
                  height: 24.h,
                ),
                12.pw,
                Expanded(
                  child: CustomText(
                    text: 'addPaymentMethod'.tr(),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: AppColors.blackDark,
                  size: 20.sp,
                ),
              ],
            ),
          ),
      ],
    );
  }
}

class _PrimaryMethodRow extends StatelessWidget {
  const _PrimaryMethodRow({
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
            child: Image.asset(
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
        _CustomRadioButton(isSelected: isSelected),
      ],
    );
  }
}

class _CustomRadioButton extends StatelessWidget {
  const _CustomRadioButton({
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
                  color: AppColors.primaryColor,
                  shape: BoxShape.circle,
                ),
              ),
            )
          : null,
    );
  }
}
