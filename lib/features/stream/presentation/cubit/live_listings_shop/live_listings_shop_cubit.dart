import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/profile/domain/usecases/get_my_products_usecase.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';
import 'package:hvatai/features/stream/data/models/stream_products/stream_products_response.dart';
import 'package:hvatai/features/stream/data/models/toggle_bidding/toggle_bidding_response.dart';
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
    this._getMyProductsUsecase,
  ) : super(LiveListingsShopState());

  final GetStreamProductsUsecase _getStreamProductsUsecase;
  final AddProductToStreamUsecase _addProductToStreamUsecase;
  final GetBidSessionUsecase _getBidSessionUsecase;
  final AddStreamBidUsecase _addStreamBidUsecase;
  final ToggleBiddingUsecase _toggleBiddingUsecase;
  final GetMyProductsUsecase _getMyProductsUsecase;

  Future<void> initialize({
    required int streamId,
    required List<int> categoryIds,
  }) async {
    await getStreamProducts(streamId: streamId, categoryIds: categoryIds);
  }

  Future<void> getStreamProducts({
    required int streamId,
    List<int>? categoryIds,
  }) async {
    final updatedCategoryIds = categoryIds ?? state.categoryIds;
    emit(state.copyWith(
      isLoading: true,
      categoryIds: updatedCategoryIds,
      streamId: streamId,
    ));
    final params = GetStreamProductsParams(streamId: streamId);
    final result = await _getStreamProductsUsecase.call(params);
    result.fold(
      (failure) =>
          emit(state.copyWith(errorMessage: failure, isLoading: false)),
      (response) {
        final products = response.data?.products ?? [];

        emit(state.copyWith(
          products: products,
          isLoading: false,
        ));
      },
    );
  }

  void selectTab(int index) {
    if (index >= 0 && index < state.tabs.length) {
      emit(state.copyWith(selectedTabIndex: index));
    }
  }

  void searchProducts(String query) {
    emit(state.copyWith(searchQuery: query));
  }

  void showMyProductsMode() {
    emit(state.copyWith(
      showMyProducts: true,
      searchQuery: '',
      selectedProductIds: {},
    ));
    getMyProducts();
  }

  void hideMyProductsMode() {
    emit(state.copyWith(
      showMyProducts: false,
      searchQuery: '',
      selectedProductIds: {},
    ));
  }

  void toggleProductSelection(int productId) {
    final currentSelected = Set<int>.from(state.selectedProductIds);
    if (currentSelected.contains(productId)) {
      // Deselect if already selected
      currentSelected.remove(productId);
    } else {
      // Select only this one (clear previous selection)
      currentSelected.clear();
      currentSelected.add(productId);
    }
    emit(state.copyWith(selectedProductIds: currentSelected));
  }

  void toggleStreamProductSelection(int streamProductId) {
    final currentSelected = Set<int>.from(state.selectedStreamProductIds);
    if (currentSelected.contains(streamProductId)) {
      // Deselect if already selected
      currentSelected.remove(streamProductId);
    } else {
      // Select only this one (clear previous selection)
      currentSelected.clear();
      currentSelected.add(streamProductId);
    }
    emit(state.copyWith(selectedStreamProductIds: currentSelected));
  }

  Future<void> addSelectedProductsToStream() async {
    if (state.selectedProductIds.isEmpty || state.streamId == null) return;

    for (final productId in state.selectedProductIds) {
      final product = state.myProducts.firstWhere(
        (p) => p.id == productId,
        orElse: () => throw Exception('Product not found'),
      );
      await addProductToStream(
        streamId: state.streamId!,
        product: product,
      );
    }

    // Clear selection and hide my products mode
    emit(state.copyWith(
      showMyProducts: false,
      selectedProductIds: {},
    ));
  }

  Future<bool> addProductToStream({
    required int streamId,
    required ProductModel product,
  }) async {
    if (product.id == null) {
      showFloatingMessageError('Product ID is missing');
      return false;
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
    bool isSuccess = false;

    result.fold(
      (failure) {
        showFloatingMessageError(failure);
        emit(state.copyWith(isAddingProduct: false, errorMessage: failure));
      },
      (streamProduct) async {
        showFloatingMessageSuccess('Product added to stream successfully');
        emit(state.copyWith(isAddingProduct: false, errorMessage: null));
        await getStreamProducts(
          streamId: streamId,
          categoryIds: state.categoryIds,
        );
        isSuccess = true;
      },
    );

    return isSuccess;
  }

  Future<void> getBidSession({
    required int streamId,
  }) async {
    final params = GetBidSessionParams(
      streamId: streamId,
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

    emit(state.copyWith(
      isStartingAuction: true,
      startingAuctionProductId: streamProductId,
      errorMessage: null,
    ));

    final params = AddStreamBidParams(
      streamId: streamId,
      streamProductId: streamProductId,
      bidAmount: (product.startingBid ?? 0.0).toStringAsFixed(2),
    );

    final result = await _addStreamBidUsecase(params);

    result.fold(
      (failure) {
        showFloatingMessageError(failure);
        emit(state.copyWith(
          isStartingAuction: false,
          startingAuctionProductId: null,
          errorMessage: failure,
        ));
      },
      (bidItem) {
        emit(state.copyWith(
          isStartingAuction: false,
          startingAuctionProductId: null,
          errorMessage: null,
        ));
      },
    );
  }

  Future<StreamProductModel?> toggleBidding({
    required int streamId,
    required int streamProductId,
    required double bidAmount,
    String? notes,
  }) async {
    emit(state.copyWith(
      isStartingAuction: true,
      startingAuctionProductId: streamProductId,
      errorMessage: null,
    ));

    final params = ToggleBiddingParams(
      streamId: streamId,
      streamProductId: streamProductId,
      bidAmount: bidAmount,
      notes: notes,
    );

    final result = await _toggleBiddingUsecase(params);
    StreamProductModel? streamProduct;

    result.fold(
      (failure) {
        showFloatingMessageError(failure);
        emit(state.copyWith(
          isStartingAuction: false,
          startingAuctionProductId: null,
          errorMessage: failure,
        ));
      },
      (response) {
        showFloatingMessageSuccess(
            response.message ?? 'Bid toggled successfully');
        streamProduct = _mapToggleResponseToStreamProduct(
          response,
          streamId,
          streamProductId,
          bidAmount,
        );
        emit(state.copyWith(
          isStartingAuction: false,
          startingAuctionProductId: null,
          errorMessage: null,
        ));
      },
    );

    return streamProduct;
  }

  StreamProductModel? _mapToggleResponseToStreamProduct(
    ToggleBiddingResponseModel response,
    int streamId,
    int streamProductId,
    double bidAmount,
  ) {
    final data = response.data;
    if (data == null) return null;
    return StreamProductModel(
      id: data.streamProductId ?? streamProductId,
      streamId: streamId,
      productId: data.product?.id,
      startingPrice: (data.startingBid ?? bidAmount).toString(),
      currentBid: data.bidSession?.highestBidId?.toString(),
      bidDurationSeconds: data.bidSession?.sessionDurationSeconds,
      biddingEnabled: data.biddingEnabled,
      isActive: data.isActive,
      displayOrder: null,
      remainingSeconds: data.remainingSeconds,
      bidSession: data.bidSession,
      createdAt: data.bidSession?.createdAt,
      updatedAt: data.bidSession?.updatedAt,
      product: _mapProductToEmbedded(data.product),
    );
  }

  StreamEmbeddedProductModel? _mapProductToEmbedded(ProductModel? product) {
    if (product == null) return null;
    return StreamEmbeddedProductModel(
      id: product.id,
      name: product.productName,
      description: product.productDescription,
      userId: product.userId,
      categoryId: product.categoryId,
      location: null,
      latitude: null,
      longitude: null,
    );
  }

  Future<void> getMyProducts({List<int>? categoryIds}) async {
    final idsToUse = categoryIds ?? state.categoryIds;
    emit(state.copyWith(
      isMyProductsLoading: true,
      myProductsError: null,
      categoryIds: idsToUse,
    ));
    final result = await _getMyProductsUsecase(
      GetMyProductsParams(categoryIds: idsToUse),
    );

    result.fold(
      (failure) => emit(state.copyWith(
        isMyProductsLoading: false,
        myProductsError: failure,
      )),
      (products) {
        emit(state.copyWith(
          isMyProductsLoading: false,
          myProducts: products,
          myProductsError: null,
        ));
      },
    );
  }
}
