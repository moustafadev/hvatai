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
    final categoryName = productModel.category?.name ?? 'Без категории';
    final quantity = variant.stock;
    final saleType = productModel.saleType.toLowerCase();
    final isAuction = saleType == 'auction';
    final saleLabel = isAuction ? 'Аукцион' : 'Фикс';
    final saleColor =
        isAuction ? const Color(0xFF7BE4EE) : const Color(0xFFA1F4A8);

    final double variantPrice = variant.price ?? 0.0;
    final double startingBid = streamProduct.startingBid ?? 0.0;
    final double currentHighestBid = streamProduct.currentHighestBid ?? 0.0;
    final double effectiveBidAmount = startingBid > 0
        ? startingBid
        : (currentHighestBid > 0 ? currentHighestBid : variantPrice);
    final priceLabel = effectiveBidAmount == 0
        ? '—'
        : (effectiveBidAmount % 1 == 0
            ? '${effectiveBidAmount.toInt()} ₽'
            : '${effectiveBidAmount.toStringAsFixed(2)} ₽');

    final isCurrentAuction = currentStreamProductId != null &&
        streamProduct.streamProductId != null &&
        currentStreamProductId == streamProduct.streamProductId;

    return BlocBuilder<LiveListingsShopCubit, LiveListingsShopState>(
      builder: (context, cubitState) {
        final streamProductId = streamProduct.streamProductId;
        final isSelected = streamProductId != null &&
            cubitState.selectedStreamProductIds.contains(streamProductId);

        return Padding(
          padding: EdgeInsets.only(bottom: 12.h),
          child: GestureDetector(
            onTap: () {
              // Handle tap based on mode
              if (isViewerMode) {
                // In viewer mode, handle buy now
                if (saleType == 'buy_now' && onBuyNowPressed != null) {
                  Navigator.pop(context);
                  onBuyNowPressed!(productModel);
                }
              } else {
                // In broadcaster mode, toggle selection for auction products
                if (isAuction && !isCurrentAuction && streamProductId != null) {
                  context
                      .read<LiveListingsShopCubit>()
                      .toggleStreamProductSelection(streamProductId);
                }
              }
            },
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(12.r),
                border: isCurrentAuction || isSelected
                    ? Border.all(
                        color: AppColors.primaryColor,
                        width: 2,
                      )
                    : Border.all(
                        color: Colors.transparent,
                        width: 2,
                      ),
              ),
              child: Container(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Category
                              CustomText(
                                text: categoryName,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.text,
                              ),
                              SizedBox(height: 4.h),
                              // Product name
                              CustomText(
                                text: productModel.productName ?? '',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: AppColors.text,
                              ),
                              SizedBox(height: 4.h),
                              // Quantity tag
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.w, vertical: 4.h),
                                decoration: BoxDecoration(
                                  color: AppColors.greyButton,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: CustomText(
                                  text: '$quantity шт.',
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.text,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Sale type tag
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 6.w, vertical: 2.h),
                          decoration: BoxDecoration(
                            color: saleColor,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: CustomText(
                            text: saleLabel,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.text,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // Current bid/price
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Текущая ставка:',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: AppColors.text,
                            ),
                            SizedBox(height: 2.h),
                            CustomText(
                              text: priceLabel,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: AppColors.text,
                            ),
                          ],
                        ),

                        SvgPicture.asset(
                          Assets.assetsIconsSettings2,
                          width: 32.w,
                          height: 32.h,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
