part of '../search.dart';

class ProductsSearchWidget extends StatelessWidget {
  const ProductsSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state.products.isEmpty) {
          return const CustomText(
            text: 'No products found',
            fontWeight: FontWeight.w500,
          );
        }

        return ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: state.products.length,
          itemBuilder: (context, index) {
            final product = state.products[index];

            return CustomProductCard(
              product: product,
              selectedCategoryIndex: index,
            );
          },
        );
      },
    );
  }
}
