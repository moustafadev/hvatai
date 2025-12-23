import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

part 'my_product_details_cubit.freezed.dart';
part 'my_product_details_state.dart';

class MyProductDetailsCubit extends Cubit<MyProductDetailsState> {
  MyProductDetailsCubit()
      : super(
          MyProductDetailsState(
            currentImageIndex: 0,
          ),
        ) {
    _createPageController();
  }


  void initProduct(ProductModel product) {
    emit(state.copyWith(product: product, currentImageIndex: 0));
    _createPageController();
  }

  void _createPageController() {
    final controller = PageController(initialPage: state.currentImageIndex);
    emit(state.copyWith(pageController: controller));
  }

  void resetImageIndex() {
    emit(state.copyWith(currentImageIndex: 0, pageController: null));
    _createPageController();
  }

  void changeImageIndex(int index) {
    emit(state.copyWith(currentImageIndex: index));
  }

  @override
  Future<void> close() {
    state.pageController?.dispose();
    return super.close();
  }
}
