part of '../profile.dart';

class MyProductDetailsScreen extends StatefulWidget {
  const MyProductDetailsScreen({super.key});

  @override
  State<MyProductDetailsScreen> createState() => _MyProductDetailsScreenState();
}

class _MyProductDetailsScreenState extends State<MyProductDetailsScreen> {
  @override
  void dispose() {
    // Clear video cache when leaving the screen
    VideoThumbnailPlayer.clearCache();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final detailsCubit = context.read<MyProductDetailsCubit>();
    detailsCubit.resetImageIndex();
    return BlocBuilder<MyProductDetailsCubit, MyProductDetailsState>(
        builder: (context, state) {
      final product = state.product;
      final variant = product?.variants.isNotEmpty ?? false
          ? product?.variants.first
          : VariantModel();

      final images = product?.images ?? [];

      return Scaffold(
        backgroundColor: AppColors.lightGreyBackground,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 300.h,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: PageView.builder(
                            controller: state.pageController,
                            itemCount: images.isEmpty ? 1 : images.length,
                            onPageChanged: (index) {
                              context
                                  .read<MyProductDetailsCubit>()
                                  .changeImageIndex(index);
                            },
                            itemBuilder: (context, index) {
                              if (images.isEmpty) {
                                return _buildPlaceholder();
                              }

                              final mediaPath = images[index];
                              final isVideo = _isVideoFile(mediaPath);

                              if (isVideo) {
                                // Show video player widget
                                return VideoThumbnailPlayer(
                                  videoPath: mediaPath,
                                  height: 300.h,
                                );
                              } else {
                                // Show image
                                return CustomImage(
                                  height: 300.h,
                                  imageSource: mediaPath,
                                  fit: BoxFit.cover,
                                );
                              }
                            },
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).padding.top + 8,
                          left: 16,
                          right: 16,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _CircleButton(
                                icon: Icons.arrow_back_ios_new_rounded,
                                onTap: () => context.pop(),
                              ),
                              _CircleButton(
                                icon: Icons.close,
                                onTap: () => context.pop(),
                              ),
                            ],
                          ),
                        ),
                        if (product?.id != null)
                          Positioned(
                            bottom: 16,
                            right: 16,
                            child: GestureDetector(
                              onTap: () async {
                                final result = await context.push<bool>(
                                  AppRoutes.addProduct,
                                  extra: {
                                    'product': product!,
                                    'isEdit': true,
                                  },
                                );
                                if (result == true && context.mounted) {
                                  print("================================");
                                  print('product: $product');
                                  print('result: $result');
                                  print("================================");
                                  context.pop(true);
                                }
                              },
                              child: Center(
                                child: SvgPicture.asset(
                                  Assets.assetsIconsEdit,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  if (images.isNotEmpty) ...[
                    8.ph,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        images.length,
                        (index) => _buildDot(index == state.currentImageIndex),
                      ),
                    ),
                  ],
                  12.ph,
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    color: AppColors.lightGreyBackground,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: CustomText(
                                text: product?.productName ?? '',
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            if (variant?.price != null)
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 2),
                                decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: CustomText(
                                  text: (variant?.price?.toInt() ?? 1) % 1 == 0
                                      ? "${variant?.price!.toInt()} ₽"
                                      : "${variant?.price} ₽",
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w800,
                                  color: AppColors.white,
                                ),
                              ),
                          ],
                        ),
                        8.ph,
                        if (product?.category?.name != null)
                          Row(
                            children: [
                              CustomText(
                                text: '${product?.category?.name} ',
                                color: AppColors.blackLite,
                                fontSize: 14.sp,
                              ),
                            ],
                          ),
                        8.ph,
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 3),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: AppColors.gray),
                              child: CustomText(
                                text: '${variant?.stock ?? 0} шт.',
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.blackLite,
                              ),
                            ),
                            8.pw,
                            if (product?.saleType.isNotEmpty ?? false)
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 3),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: AppColors.gray),
                                child: CustomText(
                                  text:
                                      "${product?.saleType[0].toUpperCase()}${product?.saleType.substring(1)}",
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.blackLite,
                                ),
                              ),
                          ],
                        ),
                        8.ph,
                        if (product?.productDescription?.isNotEmpty ?? false)
                          CustomText(
                            text: product?.productDescription ?? '',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        17.ph,
                        // Container(
                        //   padding: const EdgeInsets.symmetric(
                        //       horizontal: 12, vertical: 9),
                        //   decoration: BoxDecoration(
                        //     color: AppColors.gray,
                        //     borderRadius: BorderRadius.circular(6.r),
                        //   ),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       CustomText(
                        //         text: 'delivery'.tr(),
                        //         color: AppColors.blackDark,
                        //         fontSize: 14.sp,
                        //         fontWeight: FontWeight.w700,
                        //       ),
                        //       CustomText(
                        //         text: product?.deliveryMethods?.first ?? '',
                        //         color: AppColors.blackDark,
                        //         fontSize: 14.sp,
                        //         fontWeight: FontWeight.w700,
                        //       ),
                        //     ],
                        //   ),
                        // ),

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
                              text: product?.selfPickup == true
                                  ? 'free'.tr()
                                  : 'paid'.tr(),
                              color: AppColors.blackDark,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ],
                        ),
                        30.ph,
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }

  /// Check if a file path is a video
  bool _isVideoFile(String path) {
    final extension = path.toLowerCase().split('.').last;
    final videoExtensions = ['mp4', 'mov', 'avi', 'mkv', 'webm'];
    return videoExtensions.contains(extension);
  }

  Widget _buildPlaceholder() {
    return Container(
      height: 300.h,
      color: AppColors.gray,
      child: Center(
        child: Icon(
          Icons.image,
          size: 100.sp,
          color: AppColors.lightGray,
        ),
      ),
    );
  }

  Widget _buildDot(bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 10.w,
      height: 10.h,
      decoration: BoxDecoration(
        color: isActive ? AppColors.blackDark : AppColors.greyBorder,
        shape: BoxShape.circle,
      ),
    );
  }
}

class _CircleButton extends StatelessWidget {
  const _CircleButton({
    required this.icon,
    required this.onTap,
  });

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        icon,
        size: 18,
      ),
    );
  }
}
