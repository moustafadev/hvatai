part of 'live_listings_shop_cubit.dart';

class LiveListingsShopState extends Equatable {
  const LiveListingsShopState({
    this.products,
    this.errorMessage,
    this.isLoading = false,
    this.isAddingProduct = false,
    this.isStartingAuction = false,
    this.selectedTabIndex = 0,
    List<String>? tabs,
  }) : tabs = tabs ?? const ['Auction', 'Buy Now'];

  final List<StreamProductItemModel>? products;
  final String? errorMessage;
  final bool isLoading;
  final bool isAddingProduct;
  final bool isStartingAuction;
  final int selectedTabIndex;
  final List<String> tabs;

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
    int? selectedTabIndex,
    List<String>? tabs,
  }) {
    return LiveListingsShopState(
      products: products ?? this.products,
      errorMessage: errorMessage ?? this.errorMessage,
      isLoading: isLoading ?? this.isLoading,
      isAddingProduct: isAddingProduct ?? this.isAddingProduct,
      isStartingAuction: isStartingAuction ?? this.isStartingAuction,
      selectedTabIndex: selectedTabIndex ?? this.selectedTabIndex,
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
        selectedTabIndex,
        tabs
      ];
}
