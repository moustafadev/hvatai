part of '../activity.dart';

class AuctionCard extends StatelessWidget {
  final AuctionProduct product;
  final int selectedCategoryIndex;
  final String currentUserId;

  const AuctionCard({
    super.key,
    required this.product,
    required this.selectedCategoryIndex,
    required this.currentUserId,
  });

  @override
  Widget build(BuildContext context) {
    final String imageUrl =
        product.images.isNotEmpty ? product.images.first : '';
    final double currentUserBid =
        double.tryParse(product.bidders[currentUserId]?.toString() ?? '0') ??
            0.0;
    final double highestBid = product.bidders.values.isNotEmpty
        ? product.bidders.values
            .map((e) => double.tryParse(e.toString()) ?? 0.0)
            .reduce((a, b) => a > b ? a : b)
        : 0.0;

    String statusText = '';

    if (selectedCategoryIndex == 1 && currentUserBid == highestBid) {
      statusText = 'You are in the lead!';
    } else if (selectedCategoryIndex == 2 && currentUserBid < highestBid) {
      statusText = 'The bid has been outbid!';
    }

    return GestureDetector(
      onTap: () {
        // TODO: Handle navigation with GoRouter and pass product
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 6.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: imageUrl.isNotEmpty
                      ? CachedNetworkImage(
                          imageUrl: imageUrl,
                          width: 140.w,
                          height: 140.h,
                          fit: BoxFit.cover,
                        )
                      : Container(
                          width: 140.w,
                          height: 140.h,
                          color: Colors.grey[300],
                        ),
                ),
                if (statusText.isNotEmpty)
                  Positioned(
                    bottom: 8,
                    left: 8,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: (selectedCategoryIndex == 1 &&
                                currentUserBid == highestBid)
                            ? const LinearGradient(
                                colors: [
                                  Color(0xFF60C0FF),
                                  Color(0xFFE356D7),
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              )
                            : null,
                        color: (selectedCategoryIndex == 2 &&
                                currentUserBid < highestBid)
                            ? AppColors.raspberryPink
                            : null,
                      ),
                      child: CustomText(
                        text: statusText,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                Positioned(
                  top: 8.h,
                  right: 8.w,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          Assets.assetsImagesBookmark,
                          height: 12.h,
                          width: 12.w,
                        ),
                        4.pw,
                        CustomText(
                          // '${product.saveCount}',
                          text: '3',
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            10.pw,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.store, size: 14.sp),
                      4.pw,
                      CustomText(
                        // product.companyName,
                        text: 'company_name',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      4.w.horizontalSpace,
                      CustomText(
                        text: '•',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      4.pw,
                      Icon(Icons.star, size: 14.sp, color: Colors.amber),
                      2.pw,
                      CustomText(
                        // '${product.companyRating}',
                        text: '4.7',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  6.ph,
                  CustomText(
                    text: product.title,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  4.ph,
                  CustomText(
                    text: product.description,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.blackTransparent40,
                  ),
                  8.ph,
                  CustomText(
                    text: "${product.price} ₽",
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
