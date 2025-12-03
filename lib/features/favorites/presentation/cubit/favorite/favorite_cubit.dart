part of '../../favorites.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit(this.getFavProductsUsecase) : super(const FavoriteState()) {
    EventBus().subscribe<FavoriteUpdatedEvent>(_handleFavoriteUpdate);
  }

  final GetFavProductsUsecase getFavProductsUsecase;

  void _handleFavoriteUpdate(FavoriteUpdatedEvent event) {
    if (event.isFavorite) {
      if (event.product != null) {
        final existingProductIndex = state.products
            .indexWhere((product) => product.id == event.productId);

        if (existingProductIndex == -1) {
          final updatedProducts = [...state.products, event.product!];
          emit(state.copyWith(products: updatedProducts));
        } else {
          final updatedProducts = List<ProductModel>.from(state.products);
          updatedProducts[existingProductIndex] = event.product!;
          emit(state.copyWith(products: updatedProducts));
        }
      }
    } else {
      final updatedProducts = state.products
          .where((product) => product.id != event.productId)
          .toList();
      emit(state.copyWith(products: updatedProducts));
    }
  }

  @override
  Future<void> close() {
    EventBus().unsubscribe<FavoriteUpdatedEvent>(_handleFavoriteUpdate);
    return super.close();
  }

  Future<void> getFavProducts() async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));
    final result = await getFavProductsUsecase.call(unit);
    result.fold(
      (failure) =>
          emit(state.copyWith(isLoading: false, errorMessage: failure)),
      (productsList) => emit(state.copyWith(
        isLoading: false,
        products: productsList,
      )),
    );
  }

  void changeCategory(int index) {
    emit(state.copyWith(selectedCategoryIndex: index));
  }
}
