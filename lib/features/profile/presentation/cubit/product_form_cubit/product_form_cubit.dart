import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/cart/presentation/event_bus/event_bus.dart';
import 'package:hvatai/features/cart/presentation/event_bus/events.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/profile/domain/usecases/add_new_product_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/get_product_category_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/get_last_used_categories_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/update_product_usecase.dart';

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
            (state.product.variants.first.price == null ||
                state.product.variants.first.price == 0.0)));
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

  Future<File> compressImage(File file, {int quality = 70}) async {
    final targetPath = file.absolute.path.replaceAll('.jpg', '_compressed.jpg');

    final result = await FlutterImageCompress.compressAndGetFile(
      file.absolute.path,
      targetPath,
      quality: quality,
      minWidth: 1080,
      minHeight: 1080,
    );
    // Return the compressed file, or original if compression failed
    return result != null ? File(result.path) : file;
  }

  Future<MultipartFile?> _prepareImageFile(String? filePath) async {
    if (filePath == null || filePath.isEmpty) return null;

    try {
      File file = File(filePath);
      if (!await file.exists()) return null;

      // Check if it's a video file
      final extension = filePath.toLowerCase().split('.').last;
      final isVideo = ['mp4', 'mov', 'avi', 'mkv', 'webm'].contains(extension);

      // For videos, just return the file as is (no compression)
      if (isVideo) {
        return MultipartFile.fromFile(file.path,
            filename: file.path.split('/').last);
      }

      // For images, apply compression logic
      // Get original file size
      final originalSize = await file.length();

      // If file is already small enough, use it as is
      if (originalSize <= 2 * 1024 * 1024) {
        return MultipartFile.fromFile(file.path,
            filename: file.path.split('/').last);
      }

      // Compress the image with decreasing quality
      int quality = 85;
      File compressedFile = file;

      while (quality >= 30) {
        final targetPath =
            file.absolute.path.replaceAll('.jpg', '_compressed_$quality.jpg');

        final result = await FlutterImageCompress.compressAndGetFile(
          file.absolute.path,
          targetPath,
          quality: quality,
          minWidth: 1080,
          minHeight: 1080,
        );

        if (result != null) {
          compressedFile = File(result.path);
          final compressedSize = await compressedFile.length();

          // If compressed size is acceptable, use this file
          if (compressedSize <= 2 * 1024 * 1024) {
            break;
          }

          // Delete intermediate compressed file if it's still too large
          if (quality > 30) {
            await compressedFile.delete();
          }
        }

        quality -= 15;
      }

      // Final check - if still too large, use the most compressed version anyway
      final finalSize = await compressedFile.length();
      if (finalSize > 2 * 1024 * 1024) {
        debugPrint(
            'Warning: Image still large after compression: ${finalSize / 1024 / 1024}MB');
        // Continue anyway rather than throwing exception
      }

      return MultipartFile.fromFile(compressedFile.path,
          filename: compressedFile.path.split('/').last);
    } catch (e) {
      debugPrint('Error preparing media file: $e');
      // Instead of throwing exception, return null to skip this file
      return null;
    }
  }

  Future<FormData> _prepareProductFormData(ProductModel product) async {
    final formData = FormData();

    void addField(String key, dynamic value) {
      if (value == null) return;
      formData.fields.add(MapEntry(key, value.toString()));
    }

    void addBoolField(String key, bool? value) {
      if (value == null) return;
      formData.fields.add(MapEntry(key, value ? '1' : '0'));
    }

    addField('product_name', product.productName ?? '');
    addField('product_description', product.productDescription ?? '-');
    addField('category_id', product.categoryId);
    addField('sale_type', product.saleType);
    addBoolField('delivery_available', product.deliveryAvailable ?? true);
    addBoolField('self_pickup', product.selfPickup ?? false);
    addField('variants[0][price]', product.variants.first.price ?? 0.0);
    addField('variants[0][stock]', product.variants.first.stock);
    if (product.images.isNotEmpty) {
      for (int i = 0; i < product.images.length; i++) {
        final file = await _prepareImageFile(product.images[i]);
        if (file != null) {
          formData.files.add(MapEntry('product_pictures[$i]', file));
        }
      }
    }
    return formData;
  }

  Future<ProductModel?> addProduct(BuildContext context) async {
    // Validate before submitting and show specific error messages
    final validationError = _validateProduct();
    if (validationError != null) {
      showFloatingMessageError(validationError);
      return null;
    }

    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final formData = await _prepareProductFormData(state.product);

    final result = await addNewProductUsecase.call(
      AddNewProductParams(formData: formData),
    );

    ProductModel? createdProduct;

    result.fold((failure) {
      emit(state.copyWith(isLoading: false, errorMessage: failure));
      showFloatingMessageError('somethingWentWrong'.tr());
      createdProduct = null;
    }, (newProduct) {
      print('==============================');
      print('newProduct: $newProduct');
      print('==============================');
      final completeProduct = state.product.copyWith(
        id: newProduct.id,
      );

      EventBus().publish(ProductAddedEvent(completeProduct));

      emit(state.copyWith(isLoading: false));
      showFloatingMessageSuccess('productAdded'.tr());
      createdProduct = completeProduct;
      if (context.mounted) {
        context.pop(true);
      }
      // Don't reset here - let the widget handle it after closing the bottom sheet
    });

    return createdProduct;
  }

  /// Validate product data and return error message if validation fails
  String? _validateProduct() {
    if (state.product.productName == null ||
        state.product.productName!.isEmpty) {
      return 'Please enter product name'.tr();
    }

    if (state.product.productDescription == null ||
        state.product.productDescription!.isEmpty) {
      return 'Please enter product description'.tr();
    }

    if (state.product.variants.isEmpty) {
      return 'Product variant is required'.tr();
    }

    if (state.product.variants.first.price == null ||
        state.product.variants.first.price == 0.0) {
      return 'Please enter product price'.tr();
    }

    if (state.product.categoryId == null || state.product.categoryId == 0) {
      return 'Please select a category'.tr();
    }

    // Check if there's at least one image (excluding videos)
    if (!_hasAtLeastOneImage(state.product.images)) {
      return 'Please add at least one image'.tr();
    }

    if (state.product.deliveryAvailable == true &&
        (state.product.variants.first.price == null ||
            state.product.variants.first.price == 0.0)) {
      return 'Please enter product price'.tr();
    }

    return null; // No validation errors
  }

  Future<void> updateProduct(BuildContext context) async {
    final productId = state.product.id;
    if (productId == null) {
      showFloatingMessageError('somethingWentWrong'.tr());
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final formData = await _prepareProductFormData(state.product);
    final result = await updateProductUsecase.call(
      UpdateProductParams(productId: productId, formData: formData),
    );

    result.fold((failure) {
      emit(state.copyWith(isLoading: false, errorMessage: failure));
      showFloatingMessageError(failure);
    }, (updatedProduct) {
      emit(state.copyWith(
        isLoading: false,
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
