part of '../../cart.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({
    super.key,
    required this.product,
    required this.selectedCategoryIndex,
    this.isProductCompany = false,
    this.isNameCompany = false,
    this.productDetailsCubit,
    this.showSaleTypeChip = true,
    this.showFixed = true,
    this.color,
  });

  final ProductModel product;
  final int selectedCategoryIndex;
  final bool isProductCompany;
  final bool isNameCompany;
  final CartProductDetailsCubit? productDetailsCubit;
  final bool showSaleTypeChip;
  final bool showFixed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    if (productDetailsCubit != null) {
      return BlocProvider<CartProductDetailsCubit>.value(
        value: productDetailsCubit!,
        child: _ProductCardBody(
          product: product,
          selectedCategoryIndex: selectedCategoryIndex,
          isProductCompany: isProductCompany,
          isNameCompany: isNameCompany,
          showSaleTypeChip: showSaleTypeChip,
          showFixed: showFixed,
          color: color,
        ),
      );
    }

    return BlocProvider<CartProductDetailsCubit>(
      create: (_) => locator<CartProductDetailsCubit>(),
      child: _ProductCardBody(
        product: product,
        selectedCategoryIndex: selectedCategoryIndex,
        isProductCompany: isProductCompany,
        isNameCompany: isNameCompany,
        showSaleTypeChip: showSaleTypeChip,
        showFixed: showFixed,
        color: color,
      ),
    );
  }
}

class _ProductCardBody extends StatelessWidget {
  const _ProductCardBody({
    required this.product,
    required this.selectedCategoryIndex,
    required this.isProductCompany,
    required this.isNameCompany,
    required this.showSaleTypeChip,
    required this.showFixed,
    required this.color,
  });

  final ProductModel product;
  final int selectedCategoryIndex;
  final bool isProductCompany;
  final bool isNameCompany;
  final bool showSaleTypeChip;
  final bool showFixed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartProductDetailsCubit, CartProductDetailsState>(
      listener: (_, __) {},
      builder: (context, state) {
        final cubit = context.read<CartProductDetailsCubit>();
        final variant = product.variants.firstOrNull ?? VariantModel();

        final saleType = (product.saleType).toLowerCase();
        final saleLabel = saleType == 'auction' ? 'auction'.tr() : "fixed".tr();
        final saleColor =
            saleType == 'auction' ? AppColors.primaryColor : AppColors.primary;

        final imageUrl =
            product.images.firstWhere((e) => !_isVideo(e), orElse: () => '');

        return GestureDetector(
          onTap: () {
            final productId = product.id;
            if (productId != null) {
              context.push(
                AppRoutes.cartProductDetails,
                extra: {'productId': productId, 'cubit': cubit},
              );
            }
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 6.h),
            decoration: BoxDecoration(
              color: color ?? AppColors.lightGreyBackground,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Row(
              children: [
                ProductCardImageSection(
                  imageUrl: imageUrl,
                  height: isNameCompany ? 150.h : 140.h,
                  showSaleTypeChip: showSaleTypeChip,
                  saleLabel: saleLabel,
                  saleColor: saleColor,
                  discountType: variant.discountType,
                  showFixed: showFixed && !isNameCompany,
                ),
                10.pw,
                Expanded(
                  child: SizedBox(
                    height: isNameCompany ? 150.h : 140.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProductCardInfoSection(
                          productName: product.productName,
                          productDescription: product.productDescription,
                          showOwnerInfo: isNameCompany,
                          ownerName: product.owner?.name,
                          ownerImage: product.owner?.image,
                          averageRating: product.averageRating,
                          isDeliveryAvailable:
                              product.deliveryAvailable ?? false,
                        ),
                        BlocBuilder<CartCubit, CartState>(
                          builder: (context, cartState) {
                            final variantId = product.variants.firstOrNull?.id;

                            final isInCart = variantId != null &&
                                cartState.carts.any((cart) => (cart.items ?? [])
                                    .any((item) => item.item?.id == variantId));

                            return ProductCardPriceSection(
                              price: variant.price,
                              isInCart: isInCart,
                              onCartTap: () {
                                context
                                    .read<CartCubit>()
                                    .toggleProductInCart(context, product);
                              },
                              showStoreIcon: isProductCompany,
                              product: product,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  bool _isVideo(String path) {
    final ext = path.toLowerCase().split('.').last;
    return ['mp4', 'mov', 'avi', 'mkv', 'webm'].contains(ext);
  }
}
