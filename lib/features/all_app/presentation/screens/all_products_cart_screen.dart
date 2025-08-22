part of '../basket.dart';

class AllProductsCartScreen extends StatelessWidget {
  const AllProductsCartScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<BasketCubit>()
        ..getCartProducts()
        ..getDeliveryAddress(),
      child: BlocBuilder<BasketCubit, BasketState>(builder: (context, state) {
        final basketCubit = context.read<BasketCubit>();
        final totalCartPrice = basketCubit.totalCartPrice;

        if (state.isLoading) {
          return Center(
              child: CircularProgressIndicator(
            color: AppColors.grey,
          ));
        }
        if (state.errorMessage.isNotEmpty) {
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
        return Scaffold(
          backgroundColor: AppColors.lightGreyBackground,
          appBar: AppBar(
            backgroundColor: AppColors.lightGreyBackground,
            leading: IconButton(
              icon:
                  const Icon(Icons.arrow_back_ios, color: AppColors.blackDark),
              onPressed: () {
                basketCubit.pop(context);
              },
            ),
          ),
          body: ListView.builder(
            itemCount: state.carts.length,
            itemBuilder: (context, cartIndex) {
              final cart = state.carts[cartIndex];
              final items = cart.items ?? [];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'basket'.tr(),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w800,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: items.length,
                      itemBuilder: (context, itemIndex) {
                        final item = items[itemIndex];
                        final product = item.item?.product;
                        final image = product?.images?.firstOrNull;
                        final basketCubit = context.read<BasketCubit>();

                        return CustomSwipeableListTitle(
                          onDelete: () {
                            CustomDialog.show(
                              context,
                              title: 'deleteProduct'.tr(),
                              content: 'deleteProductMessage'.tr(),
                              confirmText: 'delete'.tr(),
                              isDestructive: true,
                              onConfirm: () {
                                basketCubit.updateProductCart(item.id!, 0);
                                context.pop();
                              },
                            );
                          },
                          contentPadding: EdgeInsets.zero,
                          leading: (image == null || image.isEmpty)
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
                          title: CustomText(
                            text: product?.name ?? '',
                            fontSize: 16.sp,
                            maxLines: 1,
                            fontWeight: FontWeight.w700,
                          ),
                          subtitle: CustomText(
                            text: '${item.price?.toInt() ?? 0} ₽',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                          ),
                          trailing: QuantityButtons(
                            cartItem: item,
                            cartModel: cart,
                          ),
                        );
                      },
                    ),
                    12.ph,
                    Row(
                      children: [
                        CustomText(
                          text: 'total'.tr(),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w800,
                        ),
                        Spacer(),
                        CustomText(
                          text: (totalCartPrice % 1 == 0
                              ? "${totalCartPrice.toInt()} ₽"
                              : "$totalCartPrice ₽"),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w800,
                        )
                      ],
                    ),
                    16.ph,
                    CustomText(
                      text: 'deliveryAddress'.tr(),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    12.ph,
                    if (state.deliveryModel.isNotEmpty)
                      //  _buildAddressItem(context, state.deliveryModel[0])
                      CustomSwipeableListTitle(
                        contentPadding: EdgeInsets.zero,
                        leading: Image.asset(
                          height: 26.h,
                          width: 26.w,
                          Assets.assetsIconsDelivery,
                        ),
                        title: CustomText(
                          text:
                              '${state.deliveryModel[0].city}, ${state.deliveryModel[0].street}, ${state.deliveryModel[0].apartment}, ${state.deliveryModel[0].intercomCode}, ${state.deliveryModel[0].floor}, ${state.deliveryModel[0].frontDoor}',
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
                              'model': state.deliveryModel[0],
                              // 'cubit': cubit,
                            },
                          );
                          if (updatedAddress != null) {
                            context
                                .read<BasketCubit>()
                                .initDeliveryModel(updatedAddress);
                            print('dsknxbncv,m.bnc.,vbnkfg;nbfdnbklfxmnb,xcv');
                          }
                        },
                      )
                  ],
                ),
              );
            },
          ),
        );
      }),
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
