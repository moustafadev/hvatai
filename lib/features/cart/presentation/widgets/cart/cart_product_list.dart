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
    return Column(
      children: cartItems.map((item) {
        final product = item.item?.product;
        final image = _getFirstImage(product?.images);
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
