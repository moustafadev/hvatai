part of '../../cart.dart';

class ProductDetailsContent extends StatelessWidget {
  const ProductDetailsContent({
    super.key,
    required this.product,
    required this.variant,
    required this.ownerProducts,
    required this.isFavorited,
    required this.onFavoriteTap,
    required this.onParticipateTap,
  });

  final ProductModel product;
  final VariantModel variant;
  final List<ProductModel> ownerProducts;
  final bool isFavorited;
  final VoidCallback onFavoriteTap;
  final VoidCallback onParticipateTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      color: AppColors.lightGreyBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductDetailsHeader(
            productName: product.productName,
            price: variant.price,
          ),
          8.ph,
          if (product.category?.name != null)
            Row(
              children: [
                CustomText(
                  text: '${product.category?.name} ',
                  color: AppColors.blackLite,
                  fontSize: 14.sp,
                ),
              ],
            ),
          8.ph,
          ProductDetailsBadges(
            stock: variant.stock,
            saleType: product.saleType,
          ),
          8.ph,
          if (product.productDescription?.isNotEmpty ?? false)
            CustomText(
              text: product.productDescription ?? '',
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          12.ph,
          ProductDetailsSeller(
            ownerName: product.user?.name,
            ownerImage: product.user?.image,
          ),
          12.ph,
          ProductDetailsOtherProducts(
            ownerProducts: ownerProducts,
            productDetailsCubit: context.read<CartProductDetailsCubit>(),
          ),
          30.ph,
        ],
      ),
    );
  }
}
