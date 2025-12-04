part of '../../cart.dart';

class ProductDetailsDeliveryInfo extends StatelessWidget {
  const ProductDetailsDeliveryInfo({
    super.key,
    required this.deliveryText,
    required this.isSelfPickup,
  });

  final String deliveryText;
  final bool? isSelfPickup;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
          decoration: BoxDecoration(
            color: AppColors.gray,
            borderRadius: BorderRadius.circular(6.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: 'delivery'.tr(),
                color: AppColors.blackDark,
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
              ),
              CustomText(
                text: deliveryText,
                color: AppColors.blackDark,
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
        ),
        9.ph,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: 'pickup'.tr(),
              color: AppColors.blackDark,
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
            CustomText(
              text: isSelfPickup == true ? 'free'.tr() : 'paid'.tr(),
              color: AppColors.blackDark,
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
      ],
    );
  }
}
