part of '../search.dart';

class AuctionSearchWidget extends StatelessWidget {
  const AuctionSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuctionSearchCubit(),
      child: BlocBuilder<AuctionSearchCubit, AuctionSearchState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...state.products.map(
                  (item) => AuctionCardSearch(
                    product: item,
                    selectedCategoryIndex: state.selectedCategoryIndex,
                    currentUserId: '',
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
