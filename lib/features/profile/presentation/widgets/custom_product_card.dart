part of '../profile.dart';

class MyCustomProductCard extends StatelessWidget {
  final ProductModel product;
  final int selectedCategoryIndex;
  final VoidCallback? onTap;

  const MyCustomProductCard({
    super.key,
    required this.product,
    required this.selectedCategoryIndex,
    this.onTap,
  });

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
    final variant = product.variants.firstOrNull ?? VariantModel();
    final String imageUrl = _getFirstImage(product.images) ?? '';

    return BlocBuilder<MyProductsCubit, MyProductsState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: onTap ??
              () {
                context.push(
                  AppRoutes.myProductDetails,
                  extra: {
                    'model': product,
                  },
                ).then((value) {
                  if (value == true && context.mounted) {
                    context.read<MyProductsCubit>().getMyProducts();
                  }
                });
              },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 6.h),
            decoration: BoxDecoration(
              color: AppColors.lightGreyBackground,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: CustomImage(
                        width: 140.w,
                        height: 140.h,
                        imageSource: imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    if (variant.discountType != null)
                      Positioned(
                        top: 8.h,
                        left: 8.w,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.w, vertical: 4.h),
                          decoration: BoxDecoration(
                            color: variant.discountType == 'fixed'
                                ? AppColors.primary
                                : AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: CustomText(
                            text: variant.discountType ?? '',
                            fontWeight: FontWeight.w600,
                            fontSize: 10.sp,
                          ),
                        ),
                      ),
                  ],
                ),
                10.pw,
                Expanded(
                  child: SizedBox(
                    height: 140.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: product.productName ?? '',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                            ),
                            4.ph,
                            CustomText(
                              text: product.productDescription ?? '',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.blackTransparent40,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        CustomText(
                          text: variant.price != null
                              ? (variant.price! % 1 == 0
                                  ? "${variant.price!.toInt()} ₽"
                                  : "${variant.price} ₽")
                              : "",
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
