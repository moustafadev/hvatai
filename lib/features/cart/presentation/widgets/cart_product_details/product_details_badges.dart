part of '../../cart.dart';

class ProductDetailsBadges extends StatelessWidget {
  const ProductDetailsBadges({
    super.key,
    required this.stock,
    required this.saleType,
    required this.currentBid,
  });

  final int? stock;
  final String saleType;
  final double? currentBid;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (stock != null)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColors.greyButton,
            ),
            child: CustomText(
              text: '$stock ${'pcs'.tr()}',
              fontSize: 10.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        8.pw,
        if (saleType.isNotEmpty)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColors.greyButton,
            ),
            child: CustomText(
              text: saleType == "auction" ? "auction".tr() : "fixed".tr(),
              fontSize: 10.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        8.pw,
        if (currentBid != null)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColors.greyButton,
            ),
            child: CustomText(
              text: '${currentBid!.toInt()} ₽',
              fontSize: 10.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
      ],
    );
  }
}
