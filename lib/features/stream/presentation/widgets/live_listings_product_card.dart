part of '../stream.dart';

class LiveListingsProductCard extends StatelessWidget {
  const LiveListingsProductCard({
    super.key,
    required this.streamProduct,
    required this.currentStreamProductId,
    required this.isViewerMode,
    required this.streamId,
    this.onBuyNowPressed,
  });

  final StreamProductItemModel streamProduct;
  final int? currentStreamProductId;
  final bool isViewerMode;
  final int streamId;
  final ValueChanged<ProductModel>? onBuyNowPressed;

  @override
  Widget build(BuildContext context) {
    final productModel = streamProduct.product;
    if (productModel == null) {
      return const SizedBox.shrink();
    }

    final variant = productModel.variants.firstOrNull ?? VariantModel();
    final String imageUrl = productModel.images.firstOrNull ?? '';
    final double variantPrice = variant.price ?? 0.0;
    final double startingBid = streamProduct.startingBid ?? 0.0;
    final double currentHighestBid = streamProduct.currentHighestBid ?? 0.0;
    final double effectiveBidAmount = startingBid > 0
        ? startingBid
        : (currentHighestBid > 0 ? currentHighestBid : variantPrice);
    final String priceLabel = effectiveBidAmount == 0
        ? '—'
        : (effectiveBidAmount % 1 == 0
            ? '${effectiveBidAmount.toInt()} ₽'
            : '${effectiveBidAmount.toStringAsFixed(2)} ₽');
    final saleType = productModel.saleType;
    final isAuction = saleType == 'auction';
    final isBuyNow = saleType == 'buy_now';

    final isCurrentAuction = currentStreamProductId != null &&
        streamProduct.streamProductId != null &&
        currentStreamProductId == streamProduct.streamProductId;

    return GestureDetector(
      onTap: () {
        // Reserved for future navigation.
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 12.h),
        decoration: BoxDecoration(
          color: AppColors.lightGreyBackground,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ProductImage(
              imageUrl: imageUrl,
              variant: variant,
            ),
            10.pw,
            Expanded(
              child: SizedBox(
                height: 150.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: productModel.productName ?? '',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    CustomText(
                      text: priceLabel,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    if (!isViewerMode && !isCurrentAuction && isAuction)
                      _StartAuctionButton(
                        streamProduct: streamProduct,
                        bidAmount: effectiveBidAmount,
                        streamId: streamId,
                      ),
                    if (isViewerMode && isBuyNow)
                      CustomButton(
                        title: 'Купить сейчас',
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        onPressed: onBuyNowPressed == null
                            ? null
                            : () {
                                Navigator.pop(context);
                                onBuyNowPressed!(productModel);
                              },
                      ),
                    5.ph,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProductImage extends StatelessWidget {
  const _ProductImage({
    required this.imageUrl,
    required this.variant,
  });

  final String imageUrl;
  final VariantModel variant;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.r),
          child: CustomImage(
            width: 140.w,
            height: 150.h,
            imageSource: imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        if (variant.discountType != null)
          Positioned(
            top: 8.h,
            left: 8.w,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 8.w,
                vertical: 4.h,
              ),
              decoration: BoxDecoration(
                color: variant.discountType == 'fixed'
                    ? AppColors.primary
                    : AppColors.primaryColor,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: CustomText(
                text: variant.discountType ?? '',
                fontWeight: FontWeight.w600,
                fontSize: 10.sp,
              ),
            ),
          ),
      ],
    );
  }
}

class _StartAuctionButton extends StatelessWidget {
  const _StartAuctionButton({
    required this.streamProduct,
    required this.bidAmount,
    required this.streamId,
  });

  final StreamProductItemModel streamProduct;
  final double bidAmount;
  final int streamId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LiveListingsShopCubit, LiveListingsShopState>(
      builder: (context, cubitState) {
        final streamProductId = streamProduct.streamProductId;
        final isLoading = cubitState.isStartingAuction &&
            cubitState.startingAuctionProductId == streamProductId;
        return CustomButton(
          title: 'Start Auction',
          padding: const EdgeInsets.symmetric(horizontal: 8),
          isLoading: isLoading,
          onPressed: streamProductId == null
              ? null
              : () async {
                  final toggledProduct = await context
                      .read<LiveListingsShopCubit>()
                      .toggleBidding(
                        streamId: streamId,
                        streamProductId: streamProductId,
                        bidAmount: bidAmount,
                      );
                  if (toggledProduct != null &&
                      context.mounted) {
                    Navigator.pop(context, toggledProduct);
                  }
                },
        );
      },
    );
  }
}

