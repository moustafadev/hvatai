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

    return ListView.builder(
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
    );
  }
}

class _EmptyLiveListings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 120.w,
            height: 120.h,
            decoration: BoxDecoration(
              color: AppColors.goldenColor.withOpacity(0.3),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.inbox_outlined,
              size: 60.sp,
              color: AppColors.goldenColor,
            ),
          ),
          SizedBox(height: 24.h),
          CustomText(
            text: "There's nothing here at the moment!",
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.blackDark,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

