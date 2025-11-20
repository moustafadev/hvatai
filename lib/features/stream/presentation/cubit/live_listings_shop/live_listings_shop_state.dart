part of 'live_listings_shop_cubit.dart';

class LiveListingsShopState extends Equatable {
  static const _unset = Object();
  const LiveListingsShopState({
    this.products,
    this.errorMessage,
    this.isLoading = false,
    this.isAddingProduct = false,
    this.isStartingAuction = false,
    this.startingAuctionProductId,
    this.selectedTabIndex = 0,
    this.myProducts = const [],
    this.isMyProductsLoading = false,
    this.myProductsError,
    this.categoryIds = const [],
    this.streamId,
    List<String>? tabs,
  }) : tabs = tabs ?? const ['Auction', 'Buy Now'];

  final List<StreamProductItemModel>? products;
  final String? errorMessage;
  final bool isLoading;
  final bool isAddingProduct;
  final bool isStartingAuction;
  final int? startingAuctionProductId;
  final int selectedTabIndex;
  final List<String> tabs;
  final List<ProductModel> myProducts;
  final bool isMyProductsLoading;
  final String? myProductsError;
  final List<int> categoryIds;
  final int? streamId;

  List<StreamProductItemModel> get filteredProducts {
    if (products == null || products!.isEmpty) return [];

    switch (selectedTabIndex) {
      case 0: // Auction
        return products!
            .where((sp) => sp.product?.saleType == 'auction')
            .toList();
      case 1: // Buy Now
        return products!
            .where((sp) => sp.product?.saleType == 'buy_now')
            .toList();
      default:
        return products!;
    }
  }

  LiveListingsShopState copyWith({
    List<StreamProductItemModel>? products,
    String? errorMessage,
    bool? isLoading,
    bool? isAddingProduct,
    bool? isStartingAuction,
    Object? startingAuctionProductId = _unset,
    int? selectedTabIndex,
    List<ProductModel>? myProducts,
    bool? isMyProductsLoading,
    String? myProductsError,
    List<int>? categoryIds,
    int? streamId,
    List<String>? tabs,
  }) {
    return LiveListingsShopState(
      products: products ?? this.products,
      errorMessage: errorMessage ?? this.errorMessage,
      isLoading: isLoading ?? this.isLoading,
      isAddingProduct: isAddingProduct ?? this.isAddingProduct,
      isStartingAuction: isStartingAuction ?? this.isStartingAuction,
      startingAuctionProductId: startingAuctionProductId == _unset
          ? this.startingAuctionProductId
          : startingAuctionProductId as int?,
      selectedTabIndex: selectedTabIndex ?? this.selectedTabIndex,
      myProducts: myProducts ?? this.myProducts,
      isMyProductsLoading: isMyProductsLoading ?? this.isMyProductsLoading,
      myProductsError: myProductsError ?? this.myProductsError,
      categoryIds: categoryIds ?? this.categoryIds,
      streamId: streamId ?? this.streamId,
      tabs: tabs ?? this.tabs,
    );
  }

  @override
  List<Object?> get props => [
        products,
        errorMessage,
        isLoading,
        isAddingProduct,
        isStartingAuction,
        startingAuctionProductId,
        selectedTabIndex,
        tabs,
        myProducts,
        isMyProductsLoading,
        myProductsError,
        categoryIds,
        streamId,
      ];
}
