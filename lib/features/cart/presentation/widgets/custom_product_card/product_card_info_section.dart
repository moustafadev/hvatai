part of '../../cart.dart';

class ProductCardInfoSection extends StatelessWidget {
  const ProductCardInfoSection({
    super.key,
    required this.productName,
    required this.productDescription,
    required this.showOwnerInfo,
    required this.ownerName,
    required this.ownerImage,
    required this.averageRating,
  });

  final String? productName;
  final String? productDescription;
  final bool showOwnerInfo;
  final String? ownerName;
  final String? ownerImage;
  final double? averageRating;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showOwnerInfo)
          Padding(
            padding: EdgeInsets.only(bottom: 4.h),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100.r),
                  child: CustomImage(
                    height: 20.h,
                    width: 20.h,
                    imageSource: ownerImage ?? '',
                    fit: BoxFit.cover,
                  ),
                ),
                8.pw,
                Expanded(
                  child: CustomText(
                    text: ownerName ?? '',
                    color: AppColors.blackDark,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w800,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Image.asset(
                  Assets.assetsIconsStar,
                  color: AppColors.goldenColor,
                  height: 16.h,
                  width: 16.w,
                ),
                4.pw,
                CustomText(
                  text: (averageRating ?? 0.0).toStringAsFixed(1),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.blackDark,
                ),
              ],
            ),
          ),
        CustomText(
          text: productName ?? '',
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        4.ph,
        CustomText(
          text: productDescription ?? '',
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.blackTransparent40,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
