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

  void sortProducts(ProductSortOption? sortOption) {
    if (sortOption == null) {
      emit(state.copyWith(selectedSortOption: null));
      return;
    }

    final sortedProducts = List<ProductModel>.from(state.products);
    
    switch (sortOption) {
      case ProductSortOption.recentlyAdded:
        // Sort by ID descending (higher ID = more recent)
        sortedProducts.sort((a, b) => (b.id ?? 0).compareTo(a.id ?? 0));
        break;
      case ProductSortOption.cheapestFirst:
        // Sort by minimum price ascending
        sortedProducts.sort((a, b) {
          final priceA = _getMinPrice(a);
          final priceB = _getMinPrice(b);
          return priceA.compareTo(priceB);
        });
        break;
      case ProductSortOption.mostExpensiveFirst:
        // Sort by maximum price descending
        sortedProducts.sort((a, b) {
          final priceA = _getMaxPrice(a);
          final priceB = _getMaxPrice(b);
          return priceB.compareTo(priceA);
        });
        break;
    }

    emit(state.copyWith(
      products: sortedProducts,
      selectedSortOption: sortOption,
    ));
  }

  double _getMinPrice(ProductModel product) {
    if (product.variants.isEmpty) return double.infinity;
    final prices = product.variants
        .where((v) => v.price != null)
        .map((v) => v.price!)
        .toList();
    return prices.isEmpty ? double.infinity : prices.reduce((a, b) => a < b ? a : b);
  }

  double _getMaxPrice(ProductModel product) {
    if (product.variants.isEmpty) return 0.0;
    final prices = product.variants
        .where((v) => v.price != null)
        .map((v) => v.price!)
        .toList();
    return prices.isEmpty ? 0.0 : prices.reduce((a, b) => a > b ? a : b);
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
        emit(state.copyWith(isLoading: false, products: productsList));
        // Reapply sorting if one was selected
        if (state.selectedSortOption != null) {
          sortProducts(state.selectedSortOption);
        }
      },
    );
  }
}
