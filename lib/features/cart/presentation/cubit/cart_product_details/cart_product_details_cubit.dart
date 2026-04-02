import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/features/cart/domain/usecases/add_fav_product_usecase.dart';
import 'package:hvatai/features/cart/domain/usecases/get_product_by_id_usecase.dart';
import 'package:hvatai/features/home/domain/usecases/join_stream_usecase.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';
import 'package:hvatai/routes/app_routes.dart';

part 'cart_product_details_cubit.freezed.dart';
part 'cart_product_details_state.dart';

class CartProductDetailsCubit extends Cubit<CartProductDetailsState> {
  CartProductDetailsCubit(
    this.addFavProductUsecase,
    this.getProductByIdUsecase,
    this.joinStreamUsecase,
  ) : super(CartProductDetailsState(
          product: ProductModel(variants: [VariantModel()]),
        ));

  AddFavProductUsecase addFavProductUsecase;
  GetProductByIdUsecase getProductByIdUsecase;
  JoinStreamUsecase joinStreamUsecase;

  void changeImageIndex(int index) {
    emit(state.copyWith(currentImageIndex: index));
  }

  /// Initialize with product ID - fetches product and other products from API
  void initProductById(int productId) {
    // Check if this is the same product - if so, don't refetch

    // Reset image index when product changes
    emit(state.copyWith(
      currentImageIndex: 0,
      pageController: null, // Will be recreated with new initial page
    ));

    // Fetch product with other products if:
    // 1. It's a different product, OR
    // 2. Owner products are empty (first time loading)
    fetchProductWithOthers(productId);
  }

  void toggleFav(bool isFav) {
    final currentFav = state.isFavourites ?? isFav;
    emit(state.copyWith(isFavourites: !currentFav));
  }

  Future<void> addFavProduct(int productId) async {
    final params = AddFavProductParams(productId: productId);
    final result = await addFavProductUsecase.call(params);

    result.fold(
      (failure) {
        emit(state.copyWith(
          isLoading: false,
        ));
        showFloatingMessageError('somethingWentWrong'.tr());
      },
      (response) {
        final updatedProduct = state.product.copyWith(
          isFavorited: response.isFavorited,
          favoritesCount: response.favoritesCount,
        );

        emit(state.copyWith(
          isLoading: false,
          product: updatedProduct,
          isFavourites: response.isFavorited,
        ));
      },
    );
  }

  Future<void> fetchProductWithOthers(int productId) async {
    if (productId == 0) {
      emit(state.copyWith(
        ownerProducts: [],
      ));
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final result = await getProductByIdUsecase(
      GetProductByIdParams(productId: productId),
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          ownerProducts: [],
        ),
      ),
      (response) {
        // Update product with latest data from server
        final productData = response.data?.product;
        final otherProductsData = response.data?.otherProducts ?? [];

        final updatedProduct = productData ?? state.product;
        // Get other products (excluding current product)
        final otherProducts =
            otherProductsData.where((p) => p.id != productId).toList();

        emit(
          state.copyWith(
            isLoading: false,
            product: updatedProduct,
            isPrevFavourites: updatedProduct.isFavorited,
            ownerProducts: otherProducts,
          ),
        );
      },
    );
  }

  Future<void> joinStream(BuildContext context) async {
    final product = state.product;
    final liveAuction = product.liveAuction;
    final streamId = liveAuction?.streamId;

    if (streamId == null) {
      showFloatingMessageError('Stream ID is not available');
      return;
    }

    emit(state.copyWith(isJoiningStream: true, errorMessage: ''));

    final result = await joinStreamUsecase(streamId);

    result.fold(
      (error) {
        emit(state.copyWith(
          isJoiningStream: false,
          errorMessage: error,
        ));
        showFloatingMessageError(error);
      },
      (joinResponse) {
        emit(state.copyWith(isJoiningStream: false));

        final joinData = joinResponse.data;

        // Create StreamDataModel from live auction data
        final streamData = StreamDataModel(
          id: streamId,
          title: liveAuction?.streamTitle,
          status: liveAuction?.streamStatus ?? 'live',
          viewerCount: liveAuction?.viewerCount ?? 0,
          user: StreamUserModel(
            name: state.product.user?.name,
            email: state.product.user?.email,
            image: state.product.user?.image,
            id: state.product.user?.id,
            personalRating: state.product.user?.personalRating,
            personalRatingCount: state.product.user?.personalRatingCount,
            isFavorited: state.product.user?.isFavorited,
            favoritesCount: state.product.user?.favoritesCount,
          ),
          channelName: joinData.stream.channelName,
        );

        context.push(
          AppRoutes.liveStreamViewer,
          extra: {
            'streamDataModel': streamData,
            'joinData': joinData,
          },
        );
      },
    );
  }
}
