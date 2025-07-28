part of '../search.dart';

class ProductCardCompany extends StatelessWidget {
  const ProductCardCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuctionSearchCubit(),
      child: BlocBuilder<AuctionSearchCubit, AuctionSearchState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...state.products.map(
                (item) => AuctionCardSearch(
                  isCurrentRate: false,
                  product: item,
                  selectedCategoryIndex: state.selectedCategoryIndex,
                  currentUserId: '',
                  isProductCompany: true,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
