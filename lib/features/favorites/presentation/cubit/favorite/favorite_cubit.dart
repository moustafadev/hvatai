import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/cart/presentation/event_bus/event_bus.dart';
import 'package:hvatai/features/cart/presentation/event_bus/events.dart';
import 'package:hvatai/features/favorites/domain/usecases/get_fav_products_usecase.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

part 'favorite_cubit.freezed.dart';
part 'favorite_state.dart';



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
