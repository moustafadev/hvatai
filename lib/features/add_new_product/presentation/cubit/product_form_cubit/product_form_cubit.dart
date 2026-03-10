import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/add_new_product/domain/usecases/add_new_product_usecase.dart';
import 'package:hvatai/features/add_new_product/domain/usecases/get_product_category_usecase.dart';
import 'package:hvatai/features/add_new_product/domain/usecases/get_last_used_categories_usecase.dart';
import 'package:hvatai/features/add_new_product/domain/usecases/update_product_usecase.dart';

part 'product_form_cubit.freezed.dart';
part 'product_form_state.dart';

class ProductFormCubit extends Cubit<ProductFormState> {
  ProductFormCubit(
    this.getProductCategoryUsecase,
    this.getLastUsedCategoriesUsecase,
    this.addNewProductUsecase,
    this.updateProductUsecase,
  ) : super(
          ProductFormState(
            product: ProductModel(
              variants: [VariantModel()],
              saleType: 'buy_now',
              deliveryAvailable: false,
              deliveryTime: '',
              selfPickup: false,
            ),
          ),
        );
  final GetProductCategoryUsecase getProductCategoryUsecase;
  final GetLastUsedCategoriesUsecase getLastUsedCategoriesUsecase;
  final AddNewProductUsecase addNewProductUsecase;
  final UpdateProductUsecase updateProductUsecase;
  bool isDisabled() {
    // Check if there's at least one image (excluding videos)
    return (state.product.productName == null ||
        state.product.productName!.isEmpty ||
        state.product.productDescription == null ||
        state.product.productDescription!.isEmpty ||
        state.product.images.isEmpty ||
        state.product.variants.isEmpty ||
        state.product.variants.first.price == null ||
        state.product.variants.first.price == 0.0 ||
        state.product.categoryId == null ||
        state.product.categoryId == 0 ||
        (state.product.deliveryAvailable == true &&
            ((state.product.deliveryDiscount == null ||
                    state.product.deliveryDiscount == 0.0) ||
                (state.product.deliveryTime == null ||
                    state.product.deliveryTime == ''))));
  }

  /// Check if there's at least one image (excluding videos) in the images list
  bool _hasAtLeastOneImage(List<String>? images) {
    if (images == null || images.isEmpty) return false;

    for (final imagePath in images) {
      if (_isImageFile(imagePath)) {
        return true;
      }
    }
    return false;
  }

  /// Check if a file path is an image (not a video)
  bool _isImageFile(String path) {
    final extension = path.toLowerCase().split('.').last;
    final videoExtensions = ['mp4', 'mov', 'avi', 'mkv', 'webm'];
    return !videoExtensions.contains(extension);
  }

  void setCategory(int id, String? name) {
    emit(state.copyWith(
      product: state.product.copyWith(
        categoryId: id,
        category: MainCategoryModel(id: id, name: name),
      ),
    ));
  }

  void createPageController() {
    final controller = PageController(initialPage: state.currentImageIndex);
    emit(state.copyWith(pageController: controller));
  }

  void resetImageIndex() {
    emit(state.copyWith(currentImageIndex: 0, pageController: null));
  }

  void changeImageIndex(int index) {
    emit(state.copyWith(currentImageIndex: index));
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

  Future<void> getLastUsedCategories() async {
    final result = await getLastUsedCategoriesUsecase.call(unit);
    result.fold(
      (failure) => emit(state.copyWith(
        lastUsedCategories: [],
      )),
      (lastUsedCategories) => emit(state.copyWith(
        lastUsedCategories: lastUsedCategories,
      )),
    );
  }

  void initProductModel(ProductModel product) {
    emit(state.copyWith(product: product));
  }

  void updateField(String field, var value) {
    ProductModel product;

    switch (field) {
      case 'name':
        product = state.product.copyWith(productName: value);
        break;
      case 'description':
        product = state.product.copyWith(productDescription: value);
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
      case 'saleType':
        product = state.product.copyWith(saleType: value.toString());
        break;
      case 'deliveryTime':
        product = state.product.copyWith(deliveryTime: value.toString());
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

  void updateProductImages(List<String> imagePaths) {
    emit(state.copyWith(product: state.product.copyWith(images: imagePaths)));
  }

  void setProductMainImage(String imagePath) {
    emit(state.copyWith(product: state.product.copyWith(images: [imagePath])));
  }

  void togglePickupFree() {
    final updated = state.product.selfPickup;
    emit(state.copyWith(
      product:
          state.product.copyWith(selfPickup: updated == true ? false : true),
    ));
  }

  void toggleDeliveryAvailable() {
    final updated = !(state.product.deliveryAvailable ?? false);
    emit(state.copyWith(
      product: state.product.copyWith(deliveryAvailable: updated),
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

  void resetProduct() {
    emit(ProductFormState(
      product: ProductModel(variants: [VariantModel()]),
      selectedImages: [],
    ));
  }

  void updateDeliveryPrice(String value) {
    final doubleValue = double.tryParse(value) ?? 0.0;
    final updatedProduct =
        state.product.copyWith(deliveryDiscount: doubleValue);
    emit(state.copyWith(product: updatedProduct));
  }

  Future<ProductModel?> addProduct(BuildContext context,
      {bool isStream = false}) async {
    if (state.product.deliveryAvailable == false &&
        state.product.selfPickup == false) {
      showFloatingMessageError('pleaseSelectDeliveryMethod'.tr());
      return null;
    }

    /// must hava at lease one image
    if (!_hasAtLeastOneImage(state.product.images) && !isStream) {
      showFloatingMessageError('atLeastOneImage'.tr());
      return null;
    }

    emit(state.copyWith(isLoadingRequest: true, errorMessage: ''));

    final result = await addNewProductUsecase.call(
      AddNewProductParams(product: state.product),
    );

    ProductModel? createdProduct;

    result.fold((failure) {
      emit(state.copyWith(isLoadingRequest: false));
      showFloatingMessageError(failure);
      createdProduct = null;
    }, (newProduct) {
      final completeProduct = state.product.copyWith(
        id: newProduct.id,
      );

      emit(state.copyWith(isLoadingRequest: false));
      showFloatingMessageSuccess('productAdded'.tr());
      createdProduct = completeProduct;
      if (context.mounted) {
        context.pop(true);
      }
      // Don't reset here - let the widget handle it after closing the bottom sheet
    });

    return createdProduct;
  }

  Future<void> updateProduct(BuildContext context) async {
    final productId = state.product.id;
    if (productId == null) {
      showFloatingMessageError('somethingWentWrong'.tr());
      return;
    }

    emit(state.copyWith(isLoadingRequest: true, errorMessage: ''));

    final result = await updateProductUsecase.call(
      UpdateProductParams(productId: productId, product: state.product),
    );

    result.fold((failure) {
      emit(state.copyWith(isLoadingRequest: false));
      showFloatingMessageError(failure);
    }, (updatedProduct) {
      emit(state.copyWith(
        isLoadingRequest: false,
        errorMessage: '',
        product: updatedProduct,
      ));

      showFloatingMessageSuccess('productUpdated'.tr());
      if (context.mounted) {
        context.pop(true);
      }
    });
  }
}
