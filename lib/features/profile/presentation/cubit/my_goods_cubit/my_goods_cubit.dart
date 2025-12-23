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
import 'package:hvatai/features/profile/domain/usecases/update_product_usecase.dart';

part 'my_goods_cubit.freezed.dart';
part 'my_goods_state.dart';

class MyGoodsCubit extends Cubit<MyGoodsState> {
  MyGoodsCubit(
    this.getProductCategoryUsecase,
    this.addNewProductUsecase,
    this.updateProductUsecase,
  ) : super(
          MyGoodsState(
            product: ProductModel(variants: [VariantModel()]),
          ),
        ) {
    deliveryTimeController.text = state.product.deliveryTime ?? '';
  }
  final GetProductCategoryUsecase getProductCategoryUsecase;
  final AddNewProductUsecase addNewProductUsecase;
  final UpdateProductUsecase updateProductUsecase;
  final TextEditingController deliveryTimeController = TextEditingController();

  bool isDisabled() {
    return (state.product.productName == null ||
        state.product.productName!.isEmpty ||
        state.product.productDescription == null ||
        state.product.productDescription!.isEmpty ||
        state.product.variants.isEmpty ||
        state.product.variants.first.price == null ||
        state.product.variants.first.price == 0.0 ||
        state.product.categoryId == null ||
        state.product.categoryId == 0 ||
        (state.product.deliveryAvailable == true &&
            (state.product.deliveryTime == null ||
                state.product.deliveryTime!.isEmpty ||
                state.product.deliveryPrice == null ||
                state.product.deliveryPrice == 0.0 ||
                state.product.deliveryType == null ||
                state.product.deliveryType!.isEmpty)));
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
        product = state.product.copyWith(
          deliveryMethods: value is List<String> ? value : null,
        );
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
    emit(state.copyWith(product: state.product.copyWith(images: [imagePath])));
  }

  void toggleSelfDestruction() {
    emit(state.copyWith(
      selfDestruction: !state.selfDestruction,
    ));
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
    emit(state.copyWith(
      product: ProductModel(variants: [VariantModel()]),
      selectedImages: [],
    ));
    deliveryTimeController.clear();
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

  Future<MultipartFile?> _prepareImageFile(String? imagePath) async {
    if (imagePath == null || imagePath.isEmpty) return null;

    try {
      File file = File(imagePath);
      if (!await file.exists()) return null;

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
      debugPrint('Error preparing image file: $e');
      // Instead of throwing exception, return null to skip this image
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
    addField('product_description', product.productDescription ?? '');
    addField('category_id', product.categoryId);
    addField('sale_type', product.saleType);
    addBoolField('delivery_available', product.deliveryAvailable ?? true);
    addField('delivery_type', product.deliveryType);
    addField('delivery_time', product.deliveryTime);
    addField('delivery_price', product.deliveryPrice ?? 0);
    addField('delivery_discount', product.deliveryDiscount ?? 0);
    addField('delivery_radius', product.deliveryRadius ?? 0);
    addBoolField('self_pickup', product.selfPickup ?? false);
    addField('delivery_length_cm', product.deliveryLengthCm);
    addField('delivery_width_cm', product.deliveryWidthCm);
    addField('delivery_height_cm', product.deliveryHeightCm);
    addField('delivery_weight_kg', product.deliveryWeightKg);
    addBoolField('status', product.status ?? true);

    final deliveryMethods = product.deliveryMethods
            ?.where((method) => method.trim().isNotEmpty)
            .toList() ??
        [];
    for (var i = 0; i < deliveryMethods.length; i++) {
      addField('delivery_methods[$i]', deliveryMethods[i]);
    }

    final variants = product.variants.isNotEmpty
        ? product.variants
        : [VariantModel(price: 0, stock: 1)];

    for (var i = 0; i < variants.length; i++) {
      final variant = variants[i];
      addField('variants[$i][price]', variant.price ?? 0);
      addField('variants[$i][stock]', variant.stock);
      addField('variants[$i][discount]', variant.discount ?? 0);
      addField('variants[$i][discount_type]', variant.discountType ?? 'fixed');

      final attributes = variant.attributes ?? {};
      attributes.forEach((key, value) {
        addField('variants[$i][attributes][$key]', value);
      });
    }

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

  Future<void> addProduct(BuildContext context) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final formData = await _prepareProductFormData(state.product);

    final result = await addNewProductUsecase.call(
      AddNewProductParams(formData: formData),
    );

    result.fold((failure) {
      emit(state.copyWith(isLoading: false, errorMessage: failure));
      showFloatingMessageError('somethingWentWrong'.tr());
    }, (newProduct) {
      final completeProduct = state.product.copyWith(
        id: newProduct.id,
      );

      EventBus().publish(ProductAddedEvent(completeProduct));

      emit(state.copyWith(
          isLoading: false, products: [state.product, ...state.products]));
      showFloatingMessageSuccess('productAdded'.tr());
      if (context.mounted) {
        context.pop(true);
      }
      deliveryTimeController.clear();
      resetProduct();
    });
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
      final updatedList = state.products
          .map<ProductModel>(
              (item) => item.id == updatedProduct.id ? updatedProduct : item)
          .toList();

      emit(state.copyWith(
        isLoading: false,
        errorMessage: '',
        products: updatedList,
        product: updatedProduct,
      ));

      showFloatingMessageSuccess('productUpdated'.tr());
      if (context.mounted) {
        context.pop(true);
      }

      deliveryTimeController.text = updatedProduct.deliveryTime ?? '';
    });
  }
}
