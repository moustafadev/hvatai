part of '../../cart.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({
    super.key,
    required this.product,
    required this.selectedCategoryIndex,
    this.isProductCompany = false,
    this.isNameCompany = false,
    required this.products,
    this.productDetailsCubit,
    this.showSaleTypeChip = false,
    this.showFixed = true,
  });

  final ProductModel product;
  final int selectedCategoryIndex;
  final bool isProductCompany;
  final bool isNameCompany;
  final List<ProductModel> products;
  final CartProductDetailsCubit? productDetailsCubit;
  final bool showSaleTypeChip;
  final bool showFixed;

  @override
  Widget build(BuildContext context) {
    final blocChild = BlocConsumer<CartProductDetailsCubit, CartProductDetailsState>(
      listener: (context, state) {},
      builder: (context, state) {
        final cubit = context.read<CartProductDetailsCubit>();
        final variant = product.variants.firstOrNull ?? VariantModel();
        final String imageUrl = product.images.firstOrNull ?? '';
        final saleType = (product.saleType).toLowerCase();
        final saleLabel = saleType == 'auction' ? 'Аукцион' : 'Фикс';
        final saleColor = saleType == 'auction'
            ? const Color(0xFF7BE4EE)
            : const Color(0xFFA1F4A8);

        return GestureDetector(
          onTap: () {
            context.push(
              AppRoutes.cartProductDetails,
              extra: {'model': product, 'products': products, 'cubit': cubit},
            );
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 6.h),
            decoration: BoxDecoration(
              color: AppColors.lightGreyBackground,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.h),
                          child: ProductCardPriceSection(
                            price: variant.price,
                            showStoreIcon: isProductCompany,
                          ),
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

    if (productDetailsCubit != null) {
      return BlocProvider<CartProductDetailsCubit>.value(
        value: productDetailsCubit!,
        child: blocChild,
      );
    }

    return BlocProvider<CartProductDetailsCubit>(
      create: (_) => locator<CartProductDetailsCubit>(),
      child: blocChild,
    );
  }
}
