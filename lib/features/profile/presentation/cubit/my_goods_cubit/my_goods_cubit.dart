// rates_activity_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/activity/data/models/auction_product.dart';

part 'my_goods_cubit.freezed.dart';
part 'my_goods_state.dart';

class MyGoodsCubit extends Cubit<MyGoodsState> {
  MyGoodsCubit()
      : super(const MyGoodsState(selectedCategoryIndex: 0, products: [])) {
    loadProducts();
  }

  void changeCategory(int index) {
    emit(state.copyWith(selectedCategoryIndex: index));
  }

  void loadProducts() async {
    emit(state.copyWith(
      products: List.generate(
        5,
        (index) => AuctionProduct(
          id: '$index',
          title: 'Product $index',
          description: 'Description $index',
          price: '${100 * (index + 1)}',
          images: [],
          bidders: {},
          isSold: index % 2 == 0,
          ownerId: 'owner_$index',
        ),
      ),
    ));
  }
}
