part of '../../cart.dart';

class ProductCardImageSection extends StatelessWidget {
  const ProductCardImageSection({
    super.key,
    required this.imageUrl,
    required this.height,
    required this.showSaleTypeChip,
    required this.saleLabel,
    required this.saleColor,
    required this.discountType,
    required this.showFixed,
  });

  final String imageUrl;
  final double height;
  final bool showSaleTypeChip;
  final String saleLabel;
  final Color saleColor;
  final String? discountType;
  final bool showFixed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.r),
          child: CustomImage(
            width: 140.w,
            height: height,
            imageSource: imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        if (showSaleTypeChip || discountType != null)
          Positioned(
            top: 8.h,
            left: 8.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (showSaleTypeChip)
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: saleColor,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: CustomText(
                      text: saleLabel,
                      fontWeight: FontWeight.w600,
                      fontSize: 10.sp,
                    ),
                  ),
                if (discountType != null && showFixed)
                  Padding(
                    padding: EdgeInsets.only(top: showSaleTypeChip ? 4.h : 0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                      decoration: BoxDecoration(
                        color: discountType == 'fixed'
                            ? AppColors.primary
                            : AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: CustomText(
                        text: discountType ?? '',
                        fontWeight: FontWeight.w600,
                        fontSize: 10.sp,
                      ),
                    ),
                  ),
              ],
            ),
          ),
      ],
    );
  }
}

