import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/activity/data/models/auction_product.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/profile/domain/usecases/get_my_products_usecase.dart';
import 'package:image_picker/image_picker.dart';

part 'my_goods_cubit.freezed.dart';
part 'my_goods_state.dart';

class MyGoodsCubit extends Cubit<MyGoodsState> {
  MyGoodsCubit(this.getProductsUsecase)
      : super(MyGoodsState(
          selectedCategoryIndex: 0,
          product: ProductModel(),
        ));
  final GetMyProductsUsecase getProductsUsecase;

  void changeCategory(int index) {
    emit(state.copyWith(selectedCategoryIndex: index));
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

  void setOptionDelivery(String option) {
    final newDeliveryMethods = [option];
    final updatedProduct = state.product.copyWith(
      deliveryMethods: newDeliveryMethods,
    );

    emit(state.copyWith(product: updatedProduct));
  }

  void updateField(String field, var value) {
    ProductModel product;

    switch (field) {
      case 'deliveryMethods':
        product = state.product.copyWith(deliveryMethods: value);
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
        product = state.product.copyWith(deliveryPrice: doubleValue);
        break;

      default:
        product = state.product;
    }

    emit(state.copyWith(product: product));
  }

  void setSaleType(String value) {
    final updatedProduct = state.product.copyWith(saleType: value);
    emit(state.copyWith(product: updatedProduct));
  }

  Future<void> pickImage() async {
    if (state.selectedImages.length >= 8) return;

    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 85,
    );

    if (pickedFile != null) {
      final imagePath = pickedFile.path;

      final updatedFiles = List<File>.from(state.selectedImages)
        ..add(File(imagePath));

      final updatedPaths = List<String>.from(state.product.images ?? [])
        ..add(imagePath);

      emit(state.copyWith(
        selectedImages: updatedFiles,
        product: state.product.copyWith(
          images: updatedPaths,
        ),
      ));
    }
  }

  Future<void> captureImageFromCamera() async {
    if (state.selectedImages.length >= 8) return;

    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 85,
    );

    if (pickedFile != null) {
      final imagePath = pickedFile.path;

      final updatedFiles = List<File>.from(state.selectedImages)
        ..add(File(imagePath));

      final updatedPaths = List<String>.from(state.product.images ?? [])
        ..add(imagePath);

      emit(state.copyWith(
        selectedImages: updatedFiles,
        product: state.product.copyWith(
          images: updatedPaths,
        ),
      ));
    }
  }

  void toggleSelfDestruction() {
    emit(state.copyWith(
      selfDestruction: !state.selfDestruction,
    ));
  }

  void togglePickupFree() {
    final updated = state.product.selfPickup ?? false;

    emit(state.copyWith(
      product: state.product.copyWith(selfPickup: !updated),
    ));
  }

  void toggleBookParticipation() {
    emit(state.copyWith(
      bookParticipation: !state.bookParticipation,
    ));
  }

  // void loadProducts() async {
  //   emit(state.copyWith(
  //     products: List.generate(
  //       5,
  //       (index) => AuctionProduct(
  //         id: '$index',
  //         title: 'Product $index',
  //         description: 'Description $index',
  //         price: '${100 * (index + 1)}',
  //         images: [],
  //         bidders: {},
  //         isSold: index % 2 == 0,
  //         ownerId: 'owner_$index',
  //       ),
  //     ),
  //   ));
  // }

  void increaseQuantity() {
    if (state.quantity < 999) {
      emit(state.copyWith(quantity: state.quantity + 1));
    }
  }

  void decreaseQuantity() {
    if (state.quantity > 1) {
      emit(state.copyWith(quantity: state.quantity - 1));
    }
  }
}
