part of '../search.dart';

class AuctionCardSearch extends StatelessWidget {
  final AuctionProductSearch product;
  final int selectedCategoryIndex;
  final String currentUserId;

  const AuctionCardSearch({
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
                        : Image.asset(
                            height: 140,
                            width: 140,
                            Assets.assetsImagesIphone,
                          )),
                Positioned(
                  top: 8.h,
                  left: 8.w,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: CustomText(
                      // '${product.saveCount}',
                      text: 'Auction',
                      fontWeight: FontWeight.w600,
                      fontSize: 10.sp,
                      fontFamily: "Manrope",
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
                  CustomText(
                    text: product.title,
                    fontSize: 16,
                    fontFamily: "Manrope",
                    fontWeight: FontWeight.w700,
                  ),
                  4.ph,
                  CustomText(
                    text: product.description,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Manrope",
                    color: AppColors.blackTransparent40,
                  ),
                  20.ph,
                  CustomText(
                    text: "Current rate:",
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Manrope",
                  ),
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
