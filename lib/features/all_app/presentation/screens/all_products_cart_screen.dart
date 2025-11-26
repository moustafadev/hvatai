part of '../basket.dart';

class AllProductsCartScreen extends StatelessWidget {
  const AllProductsCartScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => locator<BasketCubit>()
            ..getCartProducts()
            ..getDeliveryAddress(),
        ),
        BlocProvider(
          create: (_) => locator<PaymentMethodCubit>()..getPaymentMethods(),
        ),
        BlocProvider(create: (_) => locator<ProfileCubit>()..getProfile()),
      ],
      child: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, profileState) {
          return BlocBuilder<BasketCubit, BasketState>(
              builder: (context, state) {
            final basketCubit = context.read<BasketCubit>();
            final totalCartPrice = basketCubit.totalCartPrice;

            // Show loading screen
            if (state.showOrderLoadingScreen) {
              return const OrderLoadingScreen();
            }

            // Show success screen
            if (state.showOrderSuccessScreen) {
              return OrderSuccessScreen(
                onContinue: () {
                  basketCubit.hideOrderSuccessScreen();
                  context.pop();
                },
              );
            }

            // Show error screen
            if (state.showOrderErrorScreen) {
              return OrderErrorScreen(
                onRetry: () {
                  basketCubit.hideOrderErrorScreen();
                },
              );
            }

            if (state.isLoading || profileState.isLoading) {
              return Scaffold(
                body: Center(
                  child: CircularProgressIndicator(
                    color: AppColors.grey,
                  ),
                ),
              );
            }
            if (state.errorMessage.isNotEmpty || profileState.errorMessage.isNotEmpty) {
              return Center(child: CustomText(text: state.errorMessage));
            }
            if (state.carts.isEmpty ||
                state.carts.every((cart) => cart.items?.isEmpty ?? true)) {
              return Scaffold(
                backgroundColor: AppColors.lightGreyBackground,
                appBar: AppBar(
                  backgroundColor: AppColors.lightGreyBackground,
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back_ios,
                        color: AppColors.blackDark),
                    onPressed: () {
                      basketCubit.pop(context);
                    },
                  ),
                ),
                body: Center(
                    child: Text(
                  'basketEmpty'.tr(),
                  style: TextStyle(fontSize: 18.sp),
                )),
              );
            }

            // Calculate total items count
            int totalItemsCount = 0;
            for (final cart in state.carts) {
              for (final item in cart.items ?? []) {
                final qty = item.quantity;
                if (qty != null) {
                  totalItemsCount += (qty is int ? qty : qty.toInt()) as int;
                }
              }
            }

            final firstCart = state.carts.first;
            final cartId = firstCart.id ?? 1;
            final deliveryAddress =
                state.deliveryModel.isNotEmpty ? state.deliveryModel[0] : null;

            // Get wallet ID from profile
           final profileCubit = context.read<ProfileCubit>();
            final walletId = profileCubit.state.userProfileModel.walletId ?? 1;

            return BlocProvider.value(
              value: profileCubit,
              child: Scaffold(
                backgroundColor: AppColors.lightGreyBackground,
                appBar: AppBar(
                  backgroundColor: AppColors.lightGreyBackground,
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back_ios,
                        color: AppColors.blackDark),
                    onPressed: () {
                      basketCubit.pop(context);
                    },
                  ),
                ),
                body: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      12.ph,
                      // Title with product count
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
                      // Product cards
                      ...state.carts
                          .expand((cart) => cart.items ?? [])
                          .map((item) {
                        final product = item.item?.product;
                        final image = (product?.images?.isNotEmpty == true)
                            ? product!.images!.first
                            : null;
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: Row(
                            children: [
                              (image == null || image.isEmpty)
                                  ? _buildPlaceholder()
                                  : ClipRRect(
                                      borderRadius: BorderRadius.circular(8.r),
                                      child: CustomImage(
                                        height: 60.h,
                                        width: 60.w,
                                        imageSource: image,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                              12.pw,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: product?.name ?? '',
                                      fontSize: 16.sp,
                                      maxLines: 2,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    4.ph,
                                    CustomText(
                                      text: '${item.price?.toInt() ?? 0} ₽',
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                      16.ph,
                      // Total
                      Row(
                        children: [
                          CustomText(
                            text: 'total'.tr(),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w800,
                          ),
                          const Spacer(),
                          CustomText(
                            text: (totalCartPrice % 1 == 0
                                ? "${totalCartPrice.toInt()} ₽"
                                : "$totalCartPrice ₽"),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w800,
                          )
                        ],
                      ),
                      24.ph,
                      // Payment method section
                      CustomText(
                        text: 'paymentMethod'.tr(),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      12.ph,
                      // Static payment_method.png row
                      Row(
                        children: [
                          Container(
                            width: 48.w,
                            height: 48.h,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF2F2F2),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Image.asset(
                                Assets.assetsIconsPaymentMethod,
                                width: 24.w,
                                height: 24.h,
                              ),
                            ),
                          ),
                          12.pw,
                          Expanded(
                            child: CustomText(
                              text: 'СБП',
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
                      8.ph,
                      // Payment cards (disabled)
                      BlocBuilder<PaymentMethodCubit, PaymentMethodState>(
                        builder: (context, paymentState) {
                          if (paymentState.isLoading) {
                            return const SizedBox.shrink();
                          }
                          return Column(
                            children: paymentState.cards.map((card) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 48.w,
                                        height: 48.h,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFF2F2F2),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                            child: SvgPicture.asset(card
                                                        .brand ==
                                                    'visa'
                                                ? Assets.assetsIconsVisa
                                                : Assets
                                                    .assetsIconsMasterCard)),
                                      ),
                                      12.pw,
                                      Expanded(
                                        child: CustomText(
                                          text: '**** ${card.lastFour}',
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
                      // Wallet row (enabled)
                      8.ph,
                      Row(
                        children: [
                          Container(
                            width: 48.w,
                            height: 48.h,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF2F2F2),
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
                              text:
                                  '${profileCubit.state.userProfileModel.walletBalance ?? '0.00'} ₽',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            Icons.radio_button_checked,
                            color: AppColors.primaryColor,
                            size: 20.sp,
                          ),
                        ],
                      ),
                      // Divider
                      8.ph,
                      Divider(
                        height: 1,
                        color: AppColors.gray,
                        thickness: 1,
                      ),
                      16.ph,
                      // Add new payment method row
                      GestureDetector(
                        onTap: () async {
                          PaymentMethodCubit paymentCubit;
                          try {
                            paymentCubit = context.read<PaymentMethodCubit>();
                          } catch (e) {
                            paymentCubit = locator<PaymentMethodCubit>();
                          }
                          await context.push(
                            AppRoutes.addNewPaymentMethod,
                            extra: paymentCubit,
                          );
                          paymentCubit.getPaymentMethods();
                        },
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
                      24.ph,
                      // Delivery address
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
                            if (updatedAddress != null) {
                              context
                                  .read<BasketCubit>()
                                  .initDeliveryModel(updatedAddress);
                            }
                          },
                        ),
                      40.ph,
                      // Pay button
                      CustomGradientButton(
                        text: 'pay'.tr(),
                        onPressed: () {
                          if (deliveryAddress == null) {
                            showFloatingMessageError(
                                'pleaseAddDeliveryAddress'.tr());
                            return;
                          }
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
                        },
                        width: double.infinity,
                        height: 52,
                        borderRadius: 10,
                      ),
                      24.ph,
                    ],
                  ),
                ),
              ),
            );
          });
        },
      ),
    );
  }

  Widget _buildPlaceholder() {
    return Container(
      height: 60.h,
      width: 60.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: AppColors.gray,
      ),
      child: Center(
        child: Icon(
          Icons.image,
          size: 30.sp,
          color: AppColors.lightGray,
        ),
      ),
    );
  }
}
