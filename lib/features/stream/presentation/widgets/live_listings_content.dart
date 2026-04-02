part of '../stream.dart';

class LiveListingsContent extends StatelessWidget {
  const LiveListingsContent({
    super.key,
    required this.state,
    required this.currentStreamProductId,
    required this.isViewerMode,
    required this.streamId,
    this.onBuyNowPressed,
  });

  final LiveListingsShopState state;
  final int? currentStreamProductId;
  final bool isViewerMode;
  final int streamId;
  final ValueChanged<ProductModel>? onBuyNowPressed;

  @override
  Widget build(BuildContext context) {
    if (state.isLoading) {
      return const Center(
        child: CircularProgressIndicator(
          color: AppColors.grey,
        ),
      );
    }

    final filteredProducts = state.filteredProducts;

    if (filteredProducts.isEmpty) {
      return _EmptyLiveListings();
    }

    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            itemCount: filteredProducts.length,
            itemBuilder: (context, index) {
              final streamProduct = filteredProducts[index];
              return LiveListingsProductCard(
                streamProduct: streamProduct,
                currentStreamProductId: currentStreamProductId,
                isViewerMode: isViewerMode,
                streamId: streamId,
                onBuyNowPressed: onBuyNowPressed,
              );
            },
          ),
        ),
        // Start Auction button (only for broadcaster mode)
        if (!isViewerMode)
          Padding(
            padding: EdgeInsets.all(16.w),
            child: SizedBox(
              width: double.infinity,
              child: BlocBuilder<LiveListingsShopCubit, LiveListingsShopState>(
                builder: (context, cubitState) {
                  final hasSelectedAuctionProducts =
                      cubitState.selectedStreamProductIds.isNotEmpty;
                  return CustomButton(
                    title: 'Начать аукцион',
                    fontSize: 16.sp,
                    isLoading: cubitState.isStartingAuction,
                    fontWeight: FontWeight.w800,
                    onPressed: hasSelectedAuctionProducts
                        ? () async {
                            final startingPrice = cubitState.products
                                ?.firstWhere((p) =>
                                    p.streamProductId ==
                                    cubitState.selectedStreamProductIds.first)
                                .product
                                ?.variants
                                .first
                                .price;
                            final toggledProduct = await context
                                .read<LiveListingsShopCubit>()
                                .toggleBidding(
                                    streamId: streamId,
                                    streamProductId: cubitState
                                        .selectedStreamProductIds.first,
                                    bidAmount: startingPrice ?? 0);
                            if (toggledProduct != null && context.mounted) {
                              Navigator.pop(context, toggledProduct);
                            }
                          }
                        : null,
                    disabled: !hasSelectedAuctionProducts,
                  );
                },
              ),
            ),
          ),
        24.ph,
      ],
    );
  }
}

class _EmptyLiveListings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.assetsImagesEmptyProducts,
              height: 60,
              width: 60,
            ),
            SizedBox(height: 24.h),
            CustomText(
              text:
                  'На стриме пока нет товаров. Добавьте их или создайте прямо сейчас.',
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.blackDark,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
