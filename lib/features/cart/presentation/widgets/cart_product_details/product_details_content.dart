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
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          8.ph,
          ProductDetailsBadges(
            stock: variant.stock,
            saleType: product.saleType,
            currentBid: product.liveAuction?.currentBid,
          ),
          8.ph,
          if (product.productDescription?.isNotEmpty ?? false)
            ReadMoreText(
              product.productDescription ?? '',
              trimMode: TrimMode.Line,
              trimLines: 2,
              textAlign: TextAlign.center,
              trimCollapsedText: "\n${"seeAll".tr()}",
              trimExpandedText: "\n${"seeLess".tr()}",
              moreStyle: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryPink,
              ),
              lessStyle: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryPink,
              ),
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.text,
              ),
            ),
          12.ph,
          ProductDetailsSeller(
            ownerId: product.user?.id ?? 0,
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
