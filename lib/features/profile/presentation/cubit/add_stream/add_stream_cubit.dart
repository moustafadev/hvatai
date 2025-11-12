import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/auth/data/models/category_model/category_model.dart';
import 'package:hvatai/features/auth/domain/usecases/get_category_usecase.dart';
import 'package:hvatai/features/profile/data/model/create_stream/create_stream_model.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/profile/domain/usecases/create_stream_uscecase.dart';
import 'package:hvatai/features/profile/domain/usecases/get_my_products_usecase.dart';
import 'package:hvatai/routes/app_routes.dart';

part 'add_stream_cubit.freezed.dart';
part 'add_stream_state.dart';

class AddStreamCubit extends Cubit<AddStreamState> {
  final GetMyProductsUsecase _getMyProductsUsecase;
  final GetCategoryUsecase _getCategoryUsecase;
  final CreateStreamUsecase _createStreamUsecase;

  AddStreamCubit(this._getMyProductsUsecase, this._getCategoryUsecase,
      this._createStreamUsecase)
      : super(
          AddStreamState(
            createStreamModel: CreateStreamModel(
              title: '',
              description: '',
              isRecordingEnabled: false,
              isPublic: false,
              enableComments: false,
              enableBidding: false,
              minimumBidIncrement: 1,
              bidDurationSeconds: 30,
              autoDeleteAfterEnd: false,
              autoDeleteHours: 24,
              saveRecording: false,
              productIds: [],
              categoryIds: const [],
            ),
          ),
        );

  // ----------------------------
  // Product Loading Logic
  // ----------------------------
  Future<void> loadProducts() async {
    emit(state.copyWith(isProductsLoading: true, error: null));
    final result = await _getMyProductsUsecase(unit);

    result.fold(
      (failure) =>
          emit(state.copyWith(isProductsLoading: false, error: failure)),
      (products) =>
          emit(state.copyWith(isProductsLoading: false, products: products)),
    );
  }

  Future<void> loadCategories() async {
    emit(state.copyWith(isCategoriesLoading: true, error: null));
    final result = await _getCategoryUsecase(unit);

    result.fold(
      (failure) =>
          emit(state.copyWith(isCategoriesLoading: false, error: failure)),
      (categories) => emit(state.copyWith(
        isCategoriesLoading: false,
        categories: categories,
      )),
    );
  }

  // ----------------------------
  // CreateStreamModel Updaters
  // ----------------------------

  void updateTitle(String value) {
    emit(state.copyWith(
      createStreamModel: state.createStreamModel.copyWith(title: value),
    ));
  }

  void updateDescription(String value) {
    emit(state.copyWith(
      createStreamModel: state.createStreamModel.copyWith(description: value),
    ));
  }

  void updateScheduledAt(DateTime value) {
    emit(state.copyWith(
      createStreamModel: state.createStreamModel.copyWith(scheduledAt: value),
    ));
  }

  void toggleIsRecordingEnabled() {
    emit(state.copyWith(
      createStreamModel: state.createStreamModel.copyWith(
        isRecordingEnabled: !state.createStreamModel.isRecordingEnabled,
      ),
    ));
  }

  void toggleIsPublic() {
    emit(state.copyWith(
      createStreamModel: state.createStreamModel.copyWith(
        isPublic: !state.createStreamModel.isPublic,
      ),
    ));
  }

  void toggleEnableComments() {
    emit(state.copyWith(
      createStreamModel: state.createStreamModel.copyWith(
        enableComments: !state.createStreamModel.enableComments,
      ),
    ));
  }

  void toggleEnableBidding() {
    emit(state.copyWith(
      createStreamModel: state.createStreamModel.copyWith(
        enableBidding: !state.createStreamModel.enableBidding,
      ),
    ));
  }

  void updateMinimumBidIncrement(double value) {
    emit(state.copyWith(
      createStreamModel: state.createStreamModel.copyWith(
        minimumBidIncrement: value,
      ),
    ));
  }

  void toggleAutoDeleteAfterEnd() {
    emit(state.copyWith(
      createStreamModel: state.createStreamModel.copyWith(
        autoDeleteAfterEnd: !state.createStreamModel.autoDeleteAfterEnd,
      ),
    ));
  }

  void updateBidDurationSeconds(int seconds) {
    emit(state.copyWith(
      createStreamModel:
          state.createStreamModel.copyWith(bidDurationSeconds: seconds),
    ));
  }

  void updateAutoDeleteHours(int hours) {
    emit(state.copyWith(
      createStreamModel: state.createStreamModel.copyWith(
        autoDeleteHours: hours,
      ),
    ));
  }

  void toggleSaveRecording() {
    emit(state.copyWith(
      createStreamModel: state.createStreamModel.copyWith(
        saveRecording: !state.createStreamModel.saveRecording,
      ),
    ));
  }

  void updateProductIds(List<int> ids) {
    final filteredIds = _filterProductIdsByCategories(
      ids,
      state.createStreamModel.categoryIds,
    );
    emit(state.copyWith(
      createStreamModel:
          state.createStreamModel.copyWith(productIds: filteredIds),
    ));
  }

  void updateCategoryIds(List<int> ids) {
    final filteredProductIds = _filterProductIdsByCategories(
      state.createStreamModel.productIds,
      ids,
    );

    emit(state.copyWith(
      createStreamModel: state.createStreamModel.copyWith(
        categoryIds: ids,
        productIds: filteredProductIds,
      ),
    ));
  }

  void addProductId(int id) {
    final ids = List<int>.from(state.createStreamModel.productIds);
    if (!ids.contains(id)) {
      ids.add(id);
      updateProductIds(ids);
    }
  }

  void removeProductId(int id) {
    final ids = List<int>.from(state.createStreamModel.productIds)..remove(id);
    updateProductIds(ids);
  }

  void addCategoryId(int id) {
    final ids = List<int>.from(state.createStreamModel.categoryIds);
    if (!ids.contains(id)) {
      ids.add(id);
      updateCategoryIds(ids);
    }
  }

  void removeCategoryId(int id) {
    final ids = List<int>.from(state.createStreamModel.categoryIds)..remove(id);
    updateCategoryIds(ids);
  }

  List<int> _filterProductIdsByCategories(
    List<int> productIds,
    List<int> categoryIds,
  ) {
    if (categoryIds.isEmpty) return [];

    final filtered = <int>[];
    for (final productId in productIds) {
      final product = _findProductById(productId);
      final productCategoryId = product?.categoryId;
      if (productCategoryId != null && categoryIds.contains(productCategoryId)) {
        filtered.add(productId);
      }
    }
    return filtered;
  }

  ProductModel? _findProductById(int productId) {
    for (final product in state.products) {
      if (product.id == productId) {
        return product;
      }
    }
    return null;
  }

  Future<void> createStream(BuildContext context) async {
    emit(state.copyWith(isLoading: true, error: null));

    final result = await _createStreamUsecase(state.createStreamModel);

    result.fold(
      (failure) {
        showFloatingMessageError(failure);
        emit(state.copyWith(isLoading: false, error: failure));
      },
      (streamResponse) {
        showFloatingMessageSuccess('Stream created successfully');
        context.push(
          AppRoutes.liveStreamBroadcaster,
          extra: {
            'streamDataModel': streamResponse.data,
          },
        );
        emit(state.copyWith(isLoading: false));
      },
    );
  }
}
