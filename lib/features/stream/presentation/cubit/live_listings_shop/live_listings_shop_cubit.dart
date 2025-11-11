import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/stream/data/models/stream_products/stream_products_response.dart';
import 'package:hvatai/features/stream/domain/usecases/add_product_to_stream_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/add_stream_bids_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_bid_session_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_stream_products_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/toggle_bidding_usecase.dart';

part 'live_listings_shop_state.dart';

class LiveListingsShopCubit extends Cubit<LiveListingsShopState> {
  LiveListingsShopCubit(
    this._getStreamProductsUsecase,
    this._addProductToStreamUsecase,
    this._getBidSessionUsecase,
    this._addStreamBidUsecase,
    this._toggleBiddingUsecase,
  ) : super(LiveListingsShopState());

  final GetStreamProductsUsecase _getStreamProductsUsecase;
  final AddProductToStreamUsecase _addProductToStreamUsecase;
  final GetBidSessionUsecase _getBidSessionUsecase;
  final AddStreamBidUsecase _addStreamBidUsecase;
  final ToggleBiddingUsecase _toggleBiddingUsecase;

  // final GetMyProductsUsecase _getMyProductsUsecase;

  Future<void> getStreamProducts({required int streamId}) async {
    emit(state.copyWith(isLoading: true));
    final params = GetStreamProductsParams(streamId: streamId);
    final result = await _getStreamProductsUsecase.call(params);
    result.fold(
      (failure) =>
          emit(state.copyWith(errorMessage: failure, isLoading: false)),
      (response) {
        final products = response.data?.products ?? [];
        emit(state.copyWith(products: products, isLoading: false));
      },
    );
  }

  void selectTab(int index) {
    if (index >= 0 && index < state.tabs.length) {
      emit(state.copyWith(selectedTabIndex: index));
    }
  }

  Future<void> addProductToStream({
    required int streamId,
    required ProductModel product,
  }) async {
    if (product.id == null) {
      showFloatingMessageError('Product ID is missing');
      return;
    }

    final variant = product.variants.firstOrNull;
    final startingPrice = variant?.price ?? 0.0;

    emit(state.copyWith(isAddingProduct: true, errorMessage: null));

    final params = AddProductToStreamParams(
      streamId: streamId,
      productId: product.id!,
      startingPrice: startingPrice,
    );

    final result = await _addProductToStreamUsecase(params);

    result.fold(
      (failure) {
        showFloatingMessageError(failure);
        emit(state.copyWith(isAddingProduct: false, errorMessage: failure));
      },
      (streamProduct) async {
        showFloatingMessageSuccess('Product added to stream successfully');
        emit(state.copyWith(isAddingProduct: false, errorMessage: null));
      },
    );
  }

  Future<void> getBidSession({
    required int streamId,
    required int streamProductId,
  }) async {
    final params = GetBidSessionParams(
      streamId: streamId,
      streamProductId: streamProductId,
    );

    final result = await _getBidSessionUsecase(params);

    result.fold(
      (failure) {
        // Log error but don't show to user since product was already added
        // You can add logging here if needed
      },
      (bidSession) {
        // Handle bid session response if needed
        // You can add any logic here based on the bid session data
      },
    );
  }

  Future<void> startAuction({
    required int streamId,
    required StreamProductItemModel product,
  }) async {
    int? streamProductId = product.streamProductId;
    if (streamProductId == null) {
      showFloatingMessageError('Product ID is missing');
      return;
    }

    emit(state.copyWith(isStartingAuction: true, errorMessage: null));

    final params = AddStreamBidParams(
      streamId: streamId,
      productId: streamProductId,
      bidAmount:
          product.product?.variants.firstOrNull?.price?.toStringAsFixed(2) ??
              '0.00',
    );

    final result = await _addStreamBidUsecase(params);

    result.fold(
      (failure) {
        showFloatingMessageError(failure);
        emit(state.copyWith(isStartingAuction: false, errorMessage: failure));
      },
      (bidItem) {
        emit(state.copyWith(isStartingAuction: false, errorMessage: null));
      },
    );
  }

  Future<void> toggleBidding({
    required int streamId,
    required int streamProductId,
    required double bidAmount,
    String? notes,
  }) async {
    emit(state.copyWith(isStartingAuction: true, errorMessage: null));

    final params = ToggleBiddingParams(
      streamId: streamId,
      streamProductId: streamProductId,
      bidAmount: bidAmount,
      notes: notes,
    );

    final result = await _toggleBiddingUsecase(params);

    result.fold(
      (failure) {
        showFloatingMessageError(failure);
        emit(state.copyWith(isStartingAuction: false, errorMessage: failure));
      },
      (bidItem) {
        showFloatingMessageSuccess('Bid toggled successfully');
        emit(state.copyWith(isStartingAuction: false, errorMessage: null));
      },
    );
  }
}
