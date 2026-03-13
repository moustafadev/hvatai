part of '../search.dart';

class ProductsSearchWidget extends StatelessWidget {
  const ProductsSearchWidget({
    super.key,
    required this.products,
    this.emptyText = 'No products found',
  });

  final List<ProductModel> products;
  final String emptyText;

  @override
  Widget build(BuildContext context) {
    if (products.isEmpty) {
      return CustomText(
        text: emptyText,
        fontWeight: FontWeight.w500,
      );
    }

    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];

        return CustomProductCard(
          product: product,
          color: Colors.transparent,
          selectedCategoryIndex: index,
        );
      },
    );
  }
}
