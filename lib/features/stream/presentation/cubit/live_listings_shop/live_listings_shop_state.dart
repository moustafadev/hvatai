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
    this.searchQuery = '',
    this.showMyProducts = false,
    this.selectedProductIds = const {},
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
  final String searchQuery;
  final bool showMyProducts;
  final Set<int> selectedProductIds;

  List<StreamProductItemModel> get filteredProducts {
    if (products == null || products!.isEmpty) return [];

    var filtered = products!;

    // Filter by search query
    if (searchQuery.isNotEmpty) {
      final query = searchQuery.toLowerCase();
      filtered = filtered.where((sp) {
        final productName = sp.product?.productName?.toLowerCase() ?? '';
        final productDescription =
            sp.product?.productDescription?.toLowerCase() ?? '';
        return productName.contains(query) ||
            productDescription.contains(query);
      }).toList();
    }

    return filtered;
  }

  List<ProductModel> get filteredMyProducts {
    if (myProducts.isEmpty) return [];

    var filtered = myProducts;

    // Filter by search query
    if (searchQuery.isNotEmpty) {
      final query = searchQuery.toLowerCase();
      filtered = filtered.where((product) {
        final productName = product.productName?.toLowerCase() ?? '';
        final productDescription =
            product.productDescription?.toLowerCase() ?? '';
        return productName.contains(query) ||
            productDescription.contains(query);
      }).toList();
    }

    return filtered;
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
    String? searchQuery,
    bool? showMyProducts,
    Set<int>? selectedProductIds,
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
      searchQuery: searchQuery ?? this.searchQuery,
      showMyProducts: showMyProducts ?? this.showMyProducts,
      selectedProductIds: selectedProductIds ?? this.selectedProductIds,
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
        searchQuery,
        showMyProducts,
        selectedProductIds,
      ];
}
