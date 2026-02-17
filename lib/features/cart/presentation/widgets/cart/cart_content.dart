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
        final totalCartPrice = state.totalCartPrice;
        final deliveryAddress =
            state.deliveryModel.isNotEmpty ? state.deliveryModel[0] : null;

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
