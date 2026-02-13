import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/favorites/domain/usecases/get_fav_products_usecase.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

part 'favorite_cubit.freezed.dart';
part 'favorite_state.dart';



class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit(this.getFavProductsUsecase) : super(const FavoriteState());
  final GetFavProductsUsecase getFavProductsUsecase;





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
