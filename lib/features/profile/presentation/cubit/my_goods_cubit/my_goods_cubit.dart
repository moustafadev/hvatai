import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/profile/domain/usecases/add_new_product_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/get_my_products_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/get_product_category_usecase.dart';

part 'my_goods_cubit.freezed.dart';
part 'my_goods_state.dart';

class MyGoodsCubit extends Cubit<MyGoodsState> {
  MyGoodsCubit(this.getProductsUsecase, this.getProductCategoryUsecase,
      this.addNewProductUsecase)
      : super(MyGoodsState(
          selectedCategoryIndex: 0,
          product: ProductModel(variants: [VariantModel()]),
        )) {
    deliveryTimeController.text = state.product.deliveryTime ?? '';
  }
  final GetMyProductsUsecase getProductsUsecase;
  final GetProductCategoryUsecase getProductCategoryUsecase;
  final AddNewProductUsecase addNewProductUsecase;
  final TextEditingController deliveryTimeController = TextEditingController();

  void changeCategory(int index) {
    emit(state.copyWith(selectedCategoryIndex: index));
  }

  void setCategory(int id, String? name) {
    emit(state.copyWith(
      product: state.product.copyWith(
        categoryId: id,
        category: MainCategoryModel(id: id, name: name),
      ),
    ));
  }

  void changeImageIndex(int index) {
    emit(state.copyWith(currentImageIndex: index));
  }

  Future<void> getMyProducts() async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));
    final result = await getProductsUsecase.call(unit);
    result.fold(
      (failure) =>
          emit(state.copyWith(isLoading: false, errorMessage: failure)),
      (productsList) => emit(state.copyWith(
        isLoading: false,
        products: productsList,
      )),
    );
  }

  Future<void> getProductCategory() async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));
    final result = await getProductCategoryUsecase.call(unit);
    result.fold(
      (failure) =>
          emit(state.copyWith(isLoading: false, errorMessage: failure)),
      (productsCategory) => emit(state.copyWith(
        isLoading: false,
        category: productsCategory,
      )),
    );
  }

  void setOptionDelivery(String option) {
    List<String> newMethods = [];

    if (option.isNotEmpty) {
      newMethods = [option];
    }

    final updatedProduct = state.product.copyWith(
      deliveryMethods: newMethods.isNotEmpty ? newMethods : null,
    );

    emit(state.copyWith(product: updatedProduct));
  }

  void initProductModel(ProductModel product) {
    emit(state.copyWith(product: product));
  }

  void updateField(String field, var value) {
    ProductModel product;

    switch (field) {
      case 'deliveryMethods':
        product = state.product.copyWith(deliveryMethods: value);
        break;
      case 'deliveryTime':
        product = state.product.copyWith(deliveryTime: value);
        deliveryTimeController.text = value;
        break;
      case 'deliveryPrice':
        final doubleValue = double.tryParse(value) ?? 0.0;
        product = state.product.copyWith(deliveryPrice: doubleValue);
        break;
      case 'name':
        product = state.product.copyWith(productName: value);
        break;
      case 'description':
        product = state.product.copyWith(productDescription: value);
        break;
      case 'length':
        final doubleValue = double.tryParse(value) ?? 0.0;
        product = state.product.copyWith(deliveryLengthCm: doubleValue);
        break;
      case 'width':
        final doubleValue = double.tryParse(value) ?? 0.0;
        product = state.product.copyWith(deliveryWidthCm: doubleValue);
        break;
      case 'height':
        final doubleValue = double.tryParse(value) ?? 0.0;
        product = state.product.copyWith(deliveryHeightCm: doubleValue);
        break;
      case 'weight':
        final doubleValue = double.tryParse(value) ?? 0.0;
        product = state.product.copyWith(deliveryWeightKg: doubleValue);
        break;
      case 'startingBid':
        final doubleValue = double.tryParse(value) ?? 0.0;
        final updatedVariants = (state.product.variants.isNotEmpty)
            ? [
                state.product.variants.first.copyWith(price: doubleValue),
                ...state.product.variants.skip(1),
              ]
            : [VariantModel(price: doubleValue)];
        product = state.product.copyWith(variants: updatedVariants);
        break;

      default:
        product = state.product;
    }

    emit(state.copyWith(product: product));
  }

  void setSaleType(String value) {
    final updatedProduct =
        state.product.copyWith(saleType: value.isNotEmpty ? value : "auction");
    emit(state.copyWith(product: updatedProduct));
  }

  void setDeliverType(String value) {
    final updatedProduct = state.product.copyWith(deliveryType: value);
    emit(state.copyWith(product: updatedProduct));
  }

  void updateProductImages(List<String> imagePaths) {
    emit(state.copyWith(product: state.product.copyWith(images: imagePaths)));
  }

  void setProductMainImage(String imagePath) {
    emit(state.copyWith(
        product: state.product.copyWith(productPictures: imagePath)));
  }

  void toggleSelfDestruction() {
    emit(state.copyWith(
      selfDestruction: !state.selfDestruction,
    ));
  }

  void togglePickupFree() {
    final updated = state.product.selfPickup;
    emit(state.copyWith(
      product: state.product.copyWith(selfPickup: !updated),
    ));
  }

  void toggleDeliveryAvailable() {
    final updated = state.product.deliveryAvailable;
    emit(state.copyWith(
      product: state.product.copyWith(deliveryAvailable: !updated),
    ));
  }

  void increaseQuantity() {
    final currentVariant = state.product.variants.firstOrNull;
    final currentStock = currentVariant?.stock ?? 1;

    if (currentStock >= 999) return;

    final updatedVariant = (currentVariant ?? VariantModel()).copyWith(
      stock: currentStock + 1,
    );

    final updatedProduct = state.product.copyWith(
      variants: [updatedVariant],
    );

    emit(state.copyWith(product: updatedProduct));
  }

  void resetProduct() {
    emit(state.copyWith(
      product: ProductModel(variants: [VariantModel()]),
      selectedImages: [],
    ));
    deliveryTimeController.clear();
  }

  void decreaseQuantity() {
    final currentVariant = state.product.variants.firstOrNull;
    final currentStock = currentVariant?.stock ?? 1;

    if (currentStock <= 1) return;

    final updatedVariant = (currentVariant ?? VariantModel()).copyWith(
      stock: currentStock - 1,
    );

    final updatedProduct = state.product.copyWith(
      variants: [updatedVariant],
    );

    emit(state.copyWith(product: updatedProduct));
  }

  Future<void> addProduct(BuildContext context) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final result = await addNewProductUsecase.call(
      AddNewProductParams(productModel: state.product),
    );
    result.fold((failure) {
      emit(state.copyWith(isLoading: false, errorMessage: failure));
      showFloatingMessageError('somethingWentWrong'.tr());
    }, (newProduct) async {
      emit(state.copyWith(
        isLoading: false,
        products: [state.product, ...state.products],
      ));

      showFloatingMessageSuccess('productAdded'.tr());
      context.pop();

      deliveryTimeController.clear();
    });
  }
}
