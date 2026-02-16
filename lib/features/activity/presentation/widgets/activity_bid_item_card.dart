part of '../activity.dart';

class ActivityBidItemCard extends StatelessWidget {
  final UserBidItem bid;

  const ActivityBidItemCard({
    super.key,
    required this.bid,
  });

  String? _getFirstImage(List<String>? images) {
    if (images == null || images.isEmpty) return null;
    for (final imagePath in images) {
      if (_isImageFile(imagePath)) {
        return imagePath;
      }
    }
    return null;
  }

  bool _isImageFile(String path) {
    final extension = path.toLowerCase().split('.').last;
    final videoExtensions = ['mp4', 'mov', 'avi', 'mkv', 'webm'];
    return !videoExtensions.contains(extension);
  }

  String _getButtonText(String? status) {
    switch (status) {
      case 'AUCTIONLIVE':
        return 'goToStream'.tr();
      case 'ENDED':
        return 'viewAuctionProgress'.tr();
      case 'WON':
        return 'pay'.tr();
      case 'PAID':
        return 'orderStatus'.tr();
      case 'LOST':
        return 'youDidNotWin'.tr();
      default:
        return '';
    }
  }

  Color _getStatusColor(String? status) {
    switch (status) {
      case 'AUCTIONLIVE':
        return const Color(0xFFF6DD00); // Yellow
      case 'ENDED':
      case 'WON':
        return const Color(0xFFA1F4A8); // Green
      case 'PAID':
        return const Color(0xFF7BE4EE); // Cyan
      case 'LOST':
        return const Color(0xFFF4A8A1); // Red/Pink
      default:
        return AppColors.graniteGray;
    }
  }

  @override
  Widget build(BuildContext context) {
    final product = bid.product;
    final imageUrl = _getFirstImage(product?.images) ?? '';
    final companyName = product?.owner?.name ?? product?.user?.name ?? '';
    final companyImage = product?.owner?.image ?? product?.user?.image ?? '';
    final productName = product?.productName ?? '';
    final buttonText = _getButtonText(bid.status);

    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image and Info Row
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Image (matching ProductCardImageSection)
              Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10.r),
                      child: CustomImage(
                        width: 136,
                        height: 136,
                        imageSource: imageUrl,
                        fit: BoxFit.cover,
                      )),
                  // Status Badge
                  if (bid.status != null && bid.statusRu != null)
                    Positioned(
                      top: 8.h,
                      left: 8.w,
                      child: Container(
                        padding: EdgeInsets.only(
                          top: 4.h,
                          right: 8.w,
                          bottom: 4.h,
                          left: 8.w,
                        ),
                        decoration: BoxDecoration(
                          color: _getStatusColor(bid.status),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Center(
                          child: CustomText(
                            text: bid.statusRu!,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Manrope',
                            textAlign: TextAlign.center,
                            height: 1.3,
                            letterSpacing: 0.01,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              10.pw,
              // Info Column
              Expanded(
                child: SizedBox(
                  height: 136,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Company Name and Image (without star)
                          if (companyName.isNotEmpty)
                            Padding(
                              padding: EdgeInsets.only(bottom: 4.h),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(100.r),
                                    child: CustomImage(
                                      height: 20.h,
                                      width: 20.w,
                                      imageSource: companyImage,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  8.pw,
                                  Expanded(
                                    child: CustomText(
                                      text: companyName,
                                      color: AppColors.blackDark,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w800,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          // Product Name
                          CustomText(
                            text: productName,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      // Bid Price
                      Row(
                        children: [
                          CustomText(
                            text: '${'myBid'.tr()}: ',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF2A2A2A),
                          ),
                          CustomText(
                            text: bid.bidAmount != null
                                ? '${bid.bidAmount! % 1 == 0 ? bid.bidAmount!.toInt().toString() : bid.bidAmount!.toStringAsFixed(0)} ₽'
                                : '0 ₽',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFFBCBCBC),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          12.ph,
          // Button Section
          CustomButton(
            title: buttonText,
            color: AppColors.blackDark,
            height: 44.h,
            radius: 10.r,
            fontSize: 16.sp,
            fontWeight: FontWeight.w800,
            textColor: AppColors.white,
            onPressed: () {
              if (bid.status == 'AUCTIONLIVE' && bid.stream?.id != null) {
                // context.push(
                //   AppRoutes.liveStreamViewer,
                //   extra: {'streamId': bid.stream!.id},
                // );
              } else if (bid.status == 'ENDED' && bid.stream?.id != null) {
                // context.push(
                //   AppRoutes.liveStreamViewer,
                //   extra: {'streamId': bid.stream!.id},
                // );
              } else if (bid.status == 'WON') {
                // Show payment bottom sheet
                if (bid.id != null) {
                  BidPurchaseConfirmationBottomSheet.show(
                    context,
                    bidPurchaseId: bid.id!,
                    onPaymentSuccess: () {
                      // Refresh bids to update status to PAID
                      context.read<ActivityCubit>().getUserBids();
                    },
                  );
                }
              } else if (bid.status == 'PAID') {
                // Navigate to order status
              } else if (bid.status == 'LOST') {
                // LOST status - button is shown but action can be empty or show message
              }
            },
          ),
        ],
      ),
    );
  }
}
