part of '../../cart.dart';

class ProductDetailsBadges extends StatelessWidget {
  const ProductDetailsBadges({
    super.key,
    required this.stock,
    required this.saleType,
  });

  final int? stock;
  final String saleType;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (stock != null)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColors.gray,
            ),
            child: CustomText(
              text: '$stock ${'pcs'.tr()}',
              fontSize: 10.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.blackLite,
            ),
          ),
        8.pw,
        if (saleType.isNotEmpty)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColors.gray,
            ),
            child: CustomText(
              text: "${saleType[0].toUpperCase()}${saleType.substring(1)}",
              fontSize: 10.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.blackLite,
            ),
          ),
      ],
    );
  }
}
