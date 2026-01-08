part of '../../cart.dart';

class ProductCardPriceSection extends StatelessWidget {
  const ProductCardPriceSection({
    super.key,
    required this.price,
    required this.showStoreIcon,
    this.onCartTap,
    this.product,
    this.isInCart = false,
  });

  final double? price;
  final bool showStoreIcon;
  final VoidCallback? onCartTap;
  final ProductModel? product;
  final bool isInCart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(
          text: price != null
              ? (price! % 1 == 0 ? "${price!.toInt()} ₽" : "$price ₽")
              : "",
          fontSize: 20.sp,
          fontWeight: FontWeight.w700,
        ),
        if (showStoreIcon) const Spacer(),
        if (showStoreIcon)
          GestureDetector(
            onTap: () {
              if (onCartTap != null) {
                onCartTap!();
              }
            },
            behavior: HitTestBehavior.opaque,
            child: CircleAvatar(
              radius: 17.r,
              backgroundColor: AppColors.graniteGray,
              child: Image.asset(
                height: 20.h,
                width: 20.h,
                Assets.assetsIconsStore,
                color: isInCart ? AppColors.primaryPink : AppColors.white,
              ),
            ),
          ),
      ],
    );
  }
}
