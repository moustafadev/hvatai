import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/search/data/model/auction_product_search.dart';

part 'auction_search_cubit.freezed.dart';
part 'auction_search_state.dart';

class AuctionSearchCubit extends Cubit<AuctionSearchState> {
  AuctionSearchCubit()
      : super(
            const AuctionSearchState(selectedCategoryIndex: 0, products: [])) {
    loadProducts();
  }

  void changeCategory(int index) {
    emit(state.copyWith(selectedCategoryIndex: index));
  }

  void loadProducts() async {
    emit(state.copyWith(
      products: List.generate(
        5,
        (index) => AuctionProductSearch(
          id: '$index',
          title: 'Phone 15 Pro Max',
          description: 'Apple products, Apple design, Iphone mockup $index',
          price: '${90000 * (index + 1)}',
          images: [],
          bidders: {},
          isSold: index % 2 == 0,
          ownerId: 'owner_$index',
        ),
      ),
    ));
  }
}
