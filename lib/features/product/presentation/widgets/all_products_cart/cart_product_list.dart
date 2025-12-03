part of '../../product.dart';

class CartProductList extends StatelessWidget {
  const CartProductList({
    super.key,
    required this.cartItems,
  });

  final List<CartItem> cartItems;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: cartItems.map((item) {
        final product = item.item?.product;
        final image = (product?.images?.isNotEmpty == true)
            ? product!.images!.first
            : null;
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Row(
            children: [
              (image == null || image.isEmpty)
                  ? _CartPlaceholder()
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(8.r),
                      child: CustomImage(
                        height: 60.h,
                        width: 60.w,
                        imageSource: image,
                        fit: BoxFit.cover,
                      ),
                    ),
              12.pw,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: product?.name ?? '',
                      fontSize: 16.sp,
                      maxLines: 2,
                      fontWeight: FontWeight.w700,
                    ),
                    4.ph,
                    CustomText(
                      text: '${item.price?.toInt() ?? 0} ₽',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

class _CartPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 60.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: AppColors.gray,
      ),
      child: Center(
        child: Icon(
          Icons.image,
          size: 30.sp,
          color: AppColors.lightGray,
        ),
      ),
    );
  }
}
