part of '../stream.dart';

class BidPurchaseConfirmationBottomSheet extends StatelessWidget {
  final int bidPurchaseId;
  final VoidCallback? onPaymentSuccess;

  const BidPurchaseConfirmationBottomSheet({
    super.key,
    required this.bidPurchaseId,
    this.onPaymentSuccess,
  });

  static void show(
    BuildContext context, {
    required int bidPurchaseId,
    VoidCallback? onPaymentSuccess,
  }) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useRootNavigator: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
      ),
      builder: (_) => BlocProvider(
        create: (_) => locator<BidPurchaseCubit>()
          ..loadDeliveryAddresses()
          ..loadWallet(),
        child: BidPurchaseConfirmationBottomSheet(
          bidPurchaseId: bidPurchaseId,
          onPaymentSuccess: onPaymentSuccess,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BidPurchaseCubit, BidPurchaseState>(
      builder: (context, bidState) {
        final selectedAddress = bidState.selectedAddress;

        return Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          decoration: BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
          ),
          child: SafeArea(
            top: false,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Handle bar
                  Center(
                    child: Container(
                      width: 40.w,
                      height: 4.h,
                      margin: EdgeInsets.only(bottom: 12.h),
                      decoration: BoxDecoration(
                        color: AppColors.greyLine,
                        borderRadius: BorderRadius.circular(2.r),
                      ),
                    ),
                  ),
                  // Main heading
                  CustomText(
                    text: 'Оплата и доставка',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w800,
                    color: AppColors.blackDark,
                  ),
                  8.ph,
                  // Delivery address section
                  if (bidState.isLoadingAddresses)
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: CircularProgressIndicator(),
                      ),
                    )
                  else
                    _DeliveryAddressRow(
                      address: selectedAddress,
                      onEdit: () async {
                        final updatedAddress =
                            await context.push<UserRegistrationData>(
                          AppRoutes.deliveryAddressForm,
                          extra: {
                            'mode': AddressFormMode.edit,
                            'address': selectedAddress?.toUserRegistrationData(),
                          },
                         
                        );

                        if (updatedAddress != null && context.mounted) {
                          context.read<BidPurchaseCubit>().selectAddress(
                              AddressModelFactory.fromUserRegistrationData(
                                  updatedAddress));
                        }
                      },
                    ),
                  8.ph,
                  // Payment method section
                  PaymentMethodsSection(
                    walletSelected: bidState.selectedPaymentMethod == 'wallet',
                    sbpSelected: bidState.selectedPaymentMethod == 'sbp',
                    onWalletTap: bidState.selectedWalletId == null
                        ? null
                        : () {
                            context
                                .read<BidPurchaseCubit>()
                                .selectPaymentMethod(
                                  'wallet',
                                  walletId: bidState.selectedWalletId,
                                );
                          },
                    onSbpTap: () {
                      context
                          .read<BidPurchaseCubit>()
                          .selectPaymentMethod('sbp');
                    },
                    onAddPaymentTap: null, // Remove card add option
                  ),
                  // Ok button
                  BlocListener<BidPurchaseCubit, BidPurchaseState>(
                    listenWhen: (previous, current) =>
                        previous.isLoading &&
                        !current.isLoading &&
                        current.errorMessage.isEmpty,
                    listener: (context, state) {
                      Navigator.of(context).pop();
                      onPaymentSuccess?.call();
                    },
                    child: CustomGradientButton(
                      text: 'Ок',
                      onPressed: (selectedAddress == null ||
                              (bidState.selectedPaymentMethod == 'wallet' &&
                                  bidState.selectedWalletId == null) ||
                              (bidState.selectedPaymentMethod != 'wallet' &&
                                  bidState.selectedPaymentMethod != 'sbp') ||
                              bidState.isLoading)
                          ? null
                          : () {
                              context
                                  .read<BidPurchaseCubit>()
                                  .completePurchase(bidPurchaseId);
                            },
                      isLoading: bidState.isLoading,
                      height: 48,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  20.ph,
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _DeliveryAddressRow extends StatelessWidget {
  final AddressModel? address;
  final VoidCallback onEdit;

  const _DeliveryAddressRow({
    required this.address,
    required this.onEdit,
  });

  String _formatAddress(AddressModel? data) {
    if (data == null) return 'Нет адреса';
    final parts = <String>[];
    for (final value in [
      data.country,
      data.city,
      data.street,
      data.floor,
      data.apartment,
      data.frontDoor,
      data.intercomCode,
    ]) {
      if (value != null && value.isNotEmpty) {
        parts.add(value);
      }
    }
    return parts.isEmpty ? 'Нет адреса' : parts.join(', ');
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 48.w,
          height: 48.h,
          decoration: BoxDecoration(
            color: AppColors.lightGreyBackground,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Image.asset(
              Assets.assetsIconsDelivery,
              width: 24.w,
              height: 24.h,
            ),
          ),
        ),
        12.pw,
        Expanded(
          child: CustomText(
            text: _formatAddress(address),
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.blackDark,
          ),
        ),
        GestureDetector(
          onTap: onEdit,
          child: Container(
            width: 34.w,
            height: 34.h,
            decoration: BoxDecoration(
              color: AppColors.greyButton,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: SvgPicture.asset(
                Assets.assetsIconsPen2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
