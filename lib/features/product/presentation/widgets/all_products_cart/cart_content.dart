part of '../../product.dart';

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
    return BlocBuilder<BasketCubit, BasketState>(
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
            final basketCubit = context.read<BasketCubit>();
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
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackTransparent40,
                  ),
                  16.ph,
                  CartProductList(cartItems: cartItems),
                  16.ph,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'total'.tr(),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w800,
                      ),
                      CustomText(
                        text: (totalCartPrice % 1 == 0
                            ? "${totalCartPrice.toInt()} ₽"
                            : "$totalCartPrice ₽"),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    ],
                  ),
                  24.ph,
                  CustomText(
                    text: 'paymentMethod'.tr(),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  12.ph,
                  PaymentMethodsSection(
                    walletSelected: true,
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
                      trailing: Icon(
                        Icons.chevron_right,
                        color: AppColors.blackDark,
                        size: 28,
                      ),
                      onTap: () async {
                        final updatedAddress =
                            await context.push<UserRegistrationData>(
                          AppRoutes.editDeliveryAddress,
                          extra: {
                            'model': deliveryAddress,
                          },
                        );
                        if (!context.mounted) return;
                        if (updatedAddress != null) {
                          basketCubit.initDeliveryModel(updatedAddress);
                        }
                      },
                    ),
                  40.ph,
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
