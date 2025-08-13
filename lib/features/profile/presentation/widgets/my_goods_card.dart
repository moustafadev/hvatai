part of '../profile.dart';

class MyGoodsCard extends StatelessWidget {
  final ProductModel product;
  final int selectedCategoryIndex;

  const MyGoodsCard({
    super.key,
    required this.product,
    required this.selectedCategoryIndex,
  });

  @override
  Widget build(BuildContext context) {
    final variant = product.variants?.firstOrNull;
    final String imageUrl = product.images?.firstOrNull ?? '';

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
                          placeholder: (context, url) => _buildPlaceholder(),
                          errorWidget: (context, url, error) =>
                              _buildPlaceholder(),
                        )
                      : _buildPlaceholder(),
                ),
                if (variant?.discountType != null)
                  Positioned(
                    top: 8.h,
                    left: 8.w,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                      decoration: BoxDecoration(
                        color: variant!.discountType == 'fixed'
                            ? AppColors.primary
                            : AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: CustomText(
                        text: variant?.discountType ?? '',
                        fontWeight: FontWeight.w600,
                        fontSize: 10.sp,
                      ),
                    ),
                  ),
              ],
            ),
            10.pw,
            Expanded(
              child: SizedBox(
                height: 140.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: product.productName ?? '',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                        4.ph,
                        CustomText(
                          text: product.productDescription ?? '',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackTransparent40,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    CustomText(
                      text: "${variant?.price ?? 0.0} ₽",
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlaceholder() {
    return Container(
      width: 140.w,
      height: 140.h,
      color: AppColors.gray,
      child: Center(
        child: Icon(
          Icons.image,
          size: 40.w,
          color: AppColors.grey,
        ),
      ),
    );
  }
}
