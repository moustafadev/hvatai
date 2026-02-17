part of '../../cart.dart';

class ProductDetailsOtherProducts extends StatelessWidget {
  const ProductDetailsOtherProducts({
    super.key,
    required this.ownerProducts,
    this.productDetailsCubit,
  });

  final List<ProductModel> ownerProducts;
  final CartProductDetailsCubit? productDetailsCubit;

  @override
  Widget build(BuildContext context) {
    if (ownerProducts.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: 'otherProducts'.tr(),
          fontSize: 16.sp,
          fontWeight: FontWeight.w800,
        ),
        12.ph,
        ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: ownerProducts.length,
          itemBuilder: (context, index) {
            final ownerproduct = ownerProducts[index];
            return CustomProductCard(
              product: ownerproduct,
              isProductCompany: true,
              color: Colors.transparent,
              showSaleTypeChip: true,
              selectedCategoryIndex: index,
              productDetailsCubit: productDetailsCubit,
            );
          },
        ),
      ],
    );
  }
}
