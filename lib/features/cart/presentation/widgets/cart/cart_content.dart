part of '../../cart.dart';

class CartContent extends StatelessWidget {
  const CartContent({
    super.key,
  });

  int _calculateTotalItemsCount(List<CartModel> carts) {
    int totalItemsCount = 0;
    for (final cart in carts) {
      for (final item in cart.items ?? []) {
        final qty = item.quantity;
        if (qty != null) {
          totalItemsCount += (qty is int ? qty : qty.toInt()) as int;
        }
      }
    }
    return totalItemsCount;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        final totalItemsCount = _calculateTotalItemsCount(state.carts);
        final cartItems =
            state.carts.expand((cart) => cart.items ?? <CartItem>[]).toList();
        final deliveryAddress =
            state.deliveryModel.isNotEmpty ? state.deliveryModel[0] : null;

        // Calculate total from checkoutTotals based on delivery method
        double totalCartPrice = 0.0;
        for (final cart in state.carts) {
          final checkoutTotals = cart.checkoutTotals;
          if (checkoutTotals != null) {
            final selectedTotals = state.deliveryMethod == 'delivery'
                ? checkoutTotals.delivery
                : checkoutTotals.pickup;
            final grandTotal = selectedTotals?.grand;
            if (grandTotal != null && grandTotal.finalValue != null) {
              totalCartPrice += grandTotal.finalValue!;
            } else {
              // Fallback to state totalCartPrice
              totalCartPrice = state.totalCartPrice;
              break;
            }
          } else {
            // Fallback to state totalCartPrice
            totalCartPrice = state.totalCartPrice;
            break;
          }
        }

        return BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, profileState) {
            final profileCubit = context.read<ProfileCubit>();
            final walletId = profileCubit.state.userProfileModel.walletId ?? 1;
            final basketCubit = context.read<CartCubit>();
            final firstCart = state.carts.first;
            final cartId = firstCart.id ?? 1;

            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  12.ph,
                  CustomText(
                    text: 'basket'.tr(),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w800,
                  ),
                  4.ph,
                  CustomText(
                    text:
                        '$totalItemsCount ${totalItemsCount == 1 ? 'item'.tr() : 'items'.tr()}',
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackColor.withValues(alpha: 0.2),
                  ),
                  16.ph,
                  if (cartItems.isNotEmpty)
                    DeliveryMethodSelector(items: cartItems),
                  if (cartItems.isNotEmpty) 16.ph,
                  CartProductList(cartItems: cartItems),
                  16.ph,
                  CustomText(
                    text: 'paymentMethod'.tr(),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  8.ph,
                  PaymentMethodsSection(
                    walletSelected: state.selectedPaymentMethod == 'wallet',
                    sbpSelected: state.selectedPaymentMethod == 'sbp',
                    onWalletTap: () {
                      basketCubit.setPaymentMethod('wallet');
                    },
                    onSbpTap: () {
                      basketCubit.setPaymentMethod('sbp');
                    },
                    onAddPaymentTap: () async {
                      PaymentMethodCubit paymentCubit;
                      try {
                        paymentCubit = context.read<PaymentMethodCubit>();
                      } catch (_) {
                        paymentCubit = locator<PaymentMethodCubit>();
                      }
                      final router = GoRouter.of(context);
                      await router.push(
                        AppRoutes.addNewPaymentMethod,
                        extra: paymentCubit,
                      );
                      paymentCubit.getPaymentMethods();
                    },
                  ),
                  24.ph,
                  CustomText(
                    text: 'deliveryAddress'.tr(),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  12.ph,
                  if (deliveryAddress != null)
                    CustomSwipeableListTitle(
                      contentPadding: EdgeInsets.zero,
                      leading: Image.asset(
                        height: 26.h,
                        width: 26.w,
                        Assets.assetsIconsDelivery,
                      ),
                      title: CustomText(
                        text:
                            '${deliveryAddress.city}, ${deliveryAddress.street}, ${deliveryAddress.apartment}, ${deliveryAddress.intercomCode}, ${deliveryAddress.floor}, ${deliveryAddress.frontDoor}',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      trailing: Container(
                        height: 34,
                        width: 34,
                        decoration: BoxDecoration(
                          color: AppColors.greyButton,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            Assets.assetsIconsPen2,
                            height: 18,
                            width: 18,
                          ),
                        ),
                      ),
                      onTap: () async {
                        final updatedAddress =
                            await context.push<UserRegistrationData>(
                          AppRoutes.deliveryAddressForm,
                          extra: {
                            'mode': AddressFormMode.edit,
                            'address': deliveryAddress,
                          },
                        );
                        if (!context.mounted) return;
                        if (updatedAddress != null) {
                          basketCubit.initDeliveryModel(updatedAddress);
                        }
                      },
                    ),
                  24.ph,
                  CartTipsSection(),
                  16.ph,
                  // Total with tip
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'total'.tr(),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w800,
                      ),
                      CustomText(
                        text: ((totalCartPrice + state.selectedTipAmount) % 1 ==
                                0
                            ? "${(totalCartPrice + state.selectedTipAmount).toInt()} ₽"
                            : "${totalCartPrice + state.selectedTipAmount} ₽"),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    ],
                  ),
                  32.ph,
                  CartPayButton(
                    hasDeliveryAddress: deliveryAddress != null,
                    onPay: () {
                      final hasInvalidPickupItems = _hasPickupNotSupportedItems(
                        cartItems,
                        state.deliveryMethod,
                      );

                      if (hasInvalidPickupItems) {
                        _showPickupRestrictionBottomSheet(
                          context,
                          onContinuePayment: () {
                            basketCubit.createOrderFromCart(
                              cartId: cartId,
                              walletId: walletId,
                              street: deliveryAddress?.street ?? '',
                              city: deliveryAddress?.city ?? '',
                              floor: deliveryAddress?.floor,
                              frontDoor: deliveryAddress?.frontDoor,
                              intercomCode: deliveryAddress?.intercomCode,
                              apartment: deliveryAddress?.apartment,
                              confirmationCall: true,
                              tipAmount: state.selectedTipAmount,
                            );
                          },
                        );
                        return;
                      }

                      if (deliveryAddress != null) {
                        basketCubit.createOrderFromCart(
                          cartId: cartId,
                          walletId: walletId,
                          street: deliveryAddress.street ?? '',
                          city: deliveryAddress.city ?? '',
                          floor: deliveryAddress.floor,
                          frontDoor: deliveryAddress.frontDoor,
                          intercomCode: deliveryAddress.intercomCode,
                          apartment: deliveryAddress.apartment,
                          confirmationCall: true,
                          tipAmount: state.selectedTipAmount,
                        );
                      }
                    },
                  ),
                  24.ph,
                ],
              ),
            );
          },
        );
      },
    );
  }
}

bool _hasPickupNotSupportedItems(
  List<CartItem> items,
  String deliveryMethod,
) {
  if (deliveryMethod != 'pickup') return false;

  for (final item in items) {
    final fulfillment = item.fulfillment;
    final supportsPickup = fulfillment?.pickup == true;
    final supportsDelivery = fulfillment?.delivery == true;

    // This matches your warningColor2 condition
    if (!supportsPickup && supportsDelivery) {
      return true;
    }
  }

  return false;
}

void _showPickupRestrictionBottomSheet(
  BuildContext context, {
  required VoidCallback onContinuePayment,
}) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (context) {
      return Container(
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(16.r),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 8),
            Container(
              width: 40,
              height: 4,
              margin: const EdgeInsets.only(bottom: 32),
              decoration: BoxDecoration(
                color: AppColors.greyButton,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            Container(
              height: 48,
              width: 48,
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(
                  Assets.assetsImagesCircleWarning,
                  height: 24,
                  width: 24,
                ),
              ),
            ),
            12.ph,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: CustomText(
                text:
                    'Некоторые товары доступны только для доставки, поэтому они останутся в корзине.',
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.center,
              ),
            ),
            24.ph,

            /// 🔥 CLOSE BUTTON
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: CustomButton(
                title: 'Закрыть',
                color: AppColors.text,
                textColor: AppColors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.w800,
                onPressed: () => Navigator.pop(context),
              ),
            ),

            12.ph,

            /// 🔥 CONTINUE BUTTON
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: CustomButton(
                title: 'Продолжить',
                color: AppColors.primaryColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w800,
                onPressed: () {
                  Navigator.pop(context);
                  onContinuePayment();
                },
              ),
            ),

            24.ph,
          ],
        ),
      );
    },
  );
}
