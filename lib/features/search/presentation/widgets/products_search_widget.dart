part of '../search.dart';

class ProductsSearchWidget extends StatelessWidget {
  const ProductsSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.grey,
            ),
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
              products: state.products,
              selectedCategoryIndex: index,
            );
          },
        );
      },
    );
  }
}
