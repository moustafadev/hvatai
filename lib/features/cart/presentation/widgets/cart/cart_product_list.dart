part of '../../cart.dart';

class CartProductList extends StatelessWidget {
  const CartProductList({
    super.key,
    required this.cartItems,
  });

  final List<CartItem> cartItems;

  /// Get the first image (excluding videos) from the product images list
  String? _getFirstImage(List<String>? images) {
    if (images == null || images.isEmpty) return null;

    for (final imagePath in images) {
      if (_isImageFile(imagePath)) {
        return imagePath;
      }
    }
    return null;
  }

  /// Check if a file path is an image (not a video)
  bool _isImageFile(String path) {
    final extension = path.toLowerCase().split('.').last;
    final videoExtensions = ['mp4', 'mov', 'avi', 'mkv', 'webm'];
    return !videoExtensions.contains(extension);
  }

  @override
  Widget build(BuildContext context) {
    final cartCubit = context.read<CartCubit>();

    return Column(
      children: cartItems.map((item) {
        final product = item.item?.product;
        final image = _getFirstImage(product?.images);
        final itemId = item.id ?? 0;

        return Padding(
          padding: EdgeInsets.only(bottom: 8.h),
          child: Container(
            padding: EdgeInsets.all(4.r),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: CustomImage(
                    height: 56.h,
                    width: 56.w,
                    imageSource: image ?? "",
                    fit: BoxFit.cover,
                  ),
                ),
                12.pw,
                // Product Name and Price
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
                // Delete Button
                GestureDetector(
                  onTap: () {
                    cartCubit.updateProductCart(itemId, 0);
                  },
                  child: Container(
                    width: 32.w,
                    height: 32.h,
                    margin: EdgeInsets.only(right: 8),
                    decoration: const BoxDecoration(
                      color: AppColors.greyButton,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.close,
                      size: 24.sp,
                      color: AppColors.greyTransparent,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
