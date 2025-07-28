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

    if (selectedCategoryIndex == 1 && currentUserBid == highestBid) {
    } else if (selectedCategoryIndex == 2 && currentUserBid < highestBid) {}

    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 6.h),
        decoration: BoxDecoration(
          color: AppColors.lightGreyBackground,
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
                            height: 140.h,
                            width: 140.w,
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
                      CircleAvatar(
                        radius: 10.r,
                        backgroundColor: AppColors.blackDark,
                        child: Image.asset(
                          Assets.assetsIconsApple,
                          height: 10.h,
                          width: 10.w,
                          fit: BoxFit.cover,
                          color: AppColors.goldenColor,
                        ),
                      ),
                      2.pw,
                      CustomText(
                        text: 'company_name ',
                        fontWeight: FontWeight.w800,
                        fontSize: 12.sp,
                        maxLines: 1,
                        // overflow: TextOverflow.ellipsis,
                      ),
                      8.pw,
                      Image.asset(
                        Assets.assetsIconsStar,
                        color: AppColors.goldenColor,
                        height: 16.h,
                        width: 16.w,
                      ),
                      4.pw,
                      CustomText(
                        text: "4.5",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.blackDark,
                      ),
                    ],
                  ),
                  4.ph,
                  CustomText(
                    text: product.title,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  4.ph,
                  CustomText(
                    text: product.description,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.blackTransparent40,
                  ),
                  35.ph,
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
