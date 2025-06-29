// rates_activity_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/activity/data/models/auction_product.dart';

part 'rates_activity_cubit.freezed.dart';
part 'rates_activity_state.dart';

class RatesActivityCubit extends Cubit<RatesActivityState> {
  RatesActivityCubit()
      : super(
            const RatesActivityState(selectedCategoryIndex: 0, products: [])) {
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
