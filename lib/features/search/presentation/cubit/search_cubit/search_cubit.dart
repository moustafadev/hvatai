import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/all_app/data/model/cart_model.dart';
import 'package:hvatai/features/all_app/domain/usecases/add_fav_product_usecase.dart';
import 'package:hvatai/features/all_app/domain/usecases/add_product_to_cart_usecase.dart';
import 'package:hvatai/features/all_app/domain/usecases/delete_cart_usecase.dart';
import 'package:hvatai/features/all_app/domain/usecases/get_all_products_usecase.dart';
import 'package:hvatai/features/all_app/domain/usecases/get_cart_usecase.dart';
import 'package:hvatai/features/all_app/presentation/event_bus/event_bus.dart';
import 'package:hvatai/features/all_app/presentation/event_bus/events.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

part 'search_cubit.freezed.dart';
part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(
    this.getAllProductsUsecase,
  ) : super(SearchState(
          categories: [],
          selectedIndex: 0,
          product: ProductModel(variants: [VariantModel()]),
          cartResponse: CartModel(),
        )) {
    EventBus().subscribe<ProductAddedEvent>((event) {
      _handleProductAdded(event);
    });
    EventBus().subscribe<FavoriteUpdatedEvent>((event) {
      _handleFavoriteUpdated(event);
    });
  }

  void _handleFavoriteUpdated(FavoriteUpdatedEvent event) {
    final updatedProducts = state.products.map((product) {
      if (product.id == event.productId) {
        return product.copyWith(
          isFavorited: event.isFavorite,
          favoritesCount: event.favoritesCount,
        );
      }
      return product;
    }).toList();

    emit(state.copyWith(products: updatedProducts));
  }

  void _handleProductAdded(ProductAddedEvent event) {
    if (!state.products.any((product) => product.id == event.product.id)) {
      final updatedProducts = [event.product, ...state.products];
      emit(state.copyWith(products: updatedProducts));
    }
  }

  @override
  Future<void> close() {
    EventBus().unsubscribe<FavoriteUpdatedEvent>(_handleFavoriteUpdated);

    EventBus().unsubscribe<ProductAddedEvent>(_handleProductAdded);
    return super.close();
  }

  GetAllProductsUsecase getAllProductsUsecase;

  void initProductModel(ProductModel product) {
    emit(state.copyWith(
      product: product,
    ));
  }

  void removeItem(String item) {
    final updatedList = List<String>.from(state.searchedItems)..remove(item);
    emit(state.copyWith(searchedItems: updatedList));
  }

  void setCategories(List<String> interests) {
    final newCategories = ['All', ...interests];
    emit(state.copyWith(categories: newCategories));
  }

  Future<void> getAllProducts() async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));
    final result = await getAllProductsUsecase.call(unit);
    result.fold(
      (failure) =>
          emit(state.copyWith(isLoading: false, errorMessage: failure)),
      (productsList) => emit(state.copyWith(
        isLoading: false,
        products: productsList,
      )),
    );
  }

  void toggleInterest(int index, String interestKey) {
    final isSelected = state.selectedIndices.contains(index);
    final updatedIndices = Set<int>.from(state.selectedIndices);
    final updatedInterests = List<String>.from(state.selectedInterests);

    if (isSelected) {
      updatedIndices.remove(index);
      updatedInterests.remove(interestKey);
    } else {
      updatedIndices.add(index);
      updatedInterests.add(interestKey);
    }

    emit(state.copyWith(
      selectedIndices: updatedIndices,
      selectedInterests: updatedInterests,
    ));
  }

  void fetchCategories() => emit(state);

  void selectCategory(dynamic index) {
    emit(state.copyWith(selectedIndex: index));
  }

  String? get selectedCategory {
    final category = state.categories[state.selectedIndex];
    return category == 'All' ? null : category;
  }
}
