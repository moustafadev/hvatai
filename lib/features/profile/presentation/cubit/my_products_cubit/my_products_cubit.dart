import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/profile/domain/usecases/get_my_products_usecase.dart';
import 'package:hvatai/features/profile/presentation/profile.dart';

part 'my_products_cubit.freezed.dart';
part 'my_products_state.dart';

class MyProductsCubit extends Cubit<MyProductsState> {
  MyProductsCubit(this._getMyProductsUsecase) : super(const MyProductsState());

  final GetMyProductsUsecase _getMyProductsUsecase;

  void changeCategory(int index) {
    emit(state.copyWith(selectedCategoryIndex: index));
  }

  void toggleProductsView(bool isMyProducts) {
    emit(state.copyWith(isShowingMyProducts: isMyProducts));
  }

  Future<void> getMyProducts() async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));
    final result = await _getMyProductsUsecase
        .call(const GetMyProductsParams(categoryIds: []));
    result.fold(
      (failure) => emit(
        state.copyWith(isLoading: false, errorMessage: failure),
      ),
      (productsList) {
        emit(state.copyWith(
            isLoading: false,
            products: productsList,
            filteredProducts: productsList));
      },
    );
  }

  // search my products localy
  void searchMyProducts(String query) {
    final filteredProducts = state.products.where((product) {
      return product.productName?.toLowerCase().contains(query.toLowerCase()) ??
          false;
    }).toList();
    if (filteredProducts.isEmpty) {
      emit(state.copyWith(filteredProducts: state.products));
    } else {
      emit(state.copyWith(filteredProducts: filteredProducts));
    }
  }
}
