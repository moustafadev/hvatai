import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/extensions/size_extension.dart';
import 'package:hvatai/core/theme/app_colors.dart';
import 'package:hvatai/core/theme/assets.dart';
import 'package:hvatai/features/payment_method/presentation/cubit/payment_method/payment_method_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/profile_cubit/profile_cubit.dart';

class PaymentMethodsSection extends StatelessWidget {
  const PaymentMethodsSection({
    super.key,
    this.onAddPaymentTap,
    this.onWalletTap,
    this.walletSelected = false,
    this.primaryMethodLabel = 'СБП',
    this.primaryMethodIconPath = Assets.assetsIconsPaymentMethod,
    this.walletBalanceOverride,
  });

  final VoidCallback? onAddPaymentTap;
  final VoidCallback? onWalletTap;
  final bool walletSelected;
  final String primaryMethodLabel;
  final String primaryMethodIconPath;
  final String? walletBalanceOverride;

  @override
  Widget build(BuildContext context) {
    final profileState = context.watch<ProfileCubit>().state;
    final walletBalance = walletBalanceOverride ??
        profileState.userProfileModel.walletBalance ??
        '0.00';

    return Column(
      children: [
        _PrimaryMethodRow(
          label: primaryMethodLabel,
          iconPath: primaryMethodIconPath,
        ),
        8.ph,
        BlocBuilder<PaymentMethodCubit, PaymentMethodState>(
          builder: (context, paymentState) {
            if (paymentState.isLoading || paymentState.cards.isEmpty) {
              return const SizedBox.shrink();
            }

            return Column(
              children: paymentState.cards.map((card) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 8.h),
                  child: Opacity(
                    opacity: 0.5,
                    child: Row(
                      children: [
                        Container(
                          width: 48.w,
                          height: 48.h,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF2F2F2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              card.brand == 'visa'
                                  ? Assets.assetsIconsVisa
                                  : Assets.assetsIconsMasterCard,
                              width: 24.w,
                            ),
                          ),
                        ),
                        12.pw,
                        Expanded(
                          child: CustomText(
                            text: '**** ${card.lastFour ?? ''}',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.radio_button_unchecked,
                          color: AppColors.gray,
                          size: 20.sp,
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            );
          },
        ),
        8.ph,
        GestureDetector(
          onTap: onWalletTap,
          child: Row(
            children: [
              Container(
                width: 48.w,
                height: 48.h,
                decoration: const BoxDecoration(
                  color: Color(0xFFF2F2F2),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Image.asset(
                    Assets.assetsIconsCard,
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
              ),
              12.pw,
              Expanded(
                child: CustomText(
                  text: '$walletBalance ₽',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Icon(
                walletSelected
                    ? Icons.radio_button_checked
                    : Icons.radio_button_unchecked,
                color: walletSelected ? AppColors.primaryColor : AppColors.gray,
                size: 20.sp,
              ),
            ],
          ),
        ),
        8.ph,
        Divider(
          height: 1,
          color: AppColors.gray,
          thickness: 1,
        ),
        8.ph,
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
  });

  final String label;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 48.w,
          height: 48.h,
          decoration: const BoxDecoration(
            color: Color(0xFFF2F2F2),
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
            fontWeight: FontWeight.w600,
          ),
        ),
        Icon(
          Icons.radio_button_unchecked,
          color: AppColors.gray,
          size: 20.sp,
        ),
      ],
    );
  }
}
