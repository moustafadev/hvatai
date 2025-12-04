part of '../../cart.dart';

class ProductDetailsHeader extends StatelessWidget {
  const ProductDetailsHeader({
    super.key,
    required this.productName,
    required this.price,
  });

  final String? productName;
  final double? price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: CustomText(
            text: productName ?? '',
            fontSize: 20.sp,
            fontWeight: FontWeight.w800,
          ),
        ),
        if (price != null)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: CustomText(
              text: price! % 1 == 0 ? "${price!.toInt()} ₽" : "$price ₽",
              fontSize: 20.sp,
              fontWeight: FontWeight.w800,
              color: AppColors.white,
            ),
          ),
      ],
    );
  }
}
