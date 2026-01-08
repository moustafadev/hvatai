part of '../../cart.dart';

class ProductDetailsImageCarousel extends StatelessWidget {
  const ProductDetailsImageCarousel({
    super.key,
    required this.images,
    required this.pageController,
    required this.currentImageIndex,
    required this.onPageChanged,
    required this.isFavorited,
    required this.onFavoriteTap,
    required this.onShareTap,
    required this.onParticipateTap,
    required this.ownerName,
    required this.ownerImage,
  });

  final List<String> images;
  final PageController pageController;
  final int currentImageIndex;
  final ValueChanged<int> onPageChanged;
  final bool isFavorited;
  final VoidCallback onFavoriteTap;
  final VoidCallback onShareTap;
  final VoidCallback onParticipateTap;
  final String? ownerName;
  final String? ownerImage;

  /// Check if a file path is a video
  bool _isVideoFile(String path) {
    final extension = path.toLowerCase().split('.').last;
    final videoExtensions = ['mp4', 'mov', 'avi', 'mkv', 'webm'];
    return videoExtensions.contains(extension);
  }

  @override
  Widget build(BuildContext context) {
    print('currentImageIndex: $currentImageIndex');
    return Column(
      children: [
        SizedBox(
          height: 300.h,
          child: Stack(
            children: [
              PageView.builder(
                controller: pageController,
                itemCount: images.isEmpty ? 1 : images.length,
                onPageChanged: onPageChanged,
                itemBuilder: (context, index) {
                  if (images.isEmpty) {
                    return _ProductDetailsPlaceholder();
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
              // Overlay company info at top
              if (ownerName != null || ownerImage != null)
                Positioned(
                  top: 16.h,
                  left: 16.w,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.w,
                      vertical: 8.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (ownerImage != null && ownerImage!.isNotEmpty)
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.r),
                            child: CustomImage(
                              imageSource: ownerImage!,
                              width: 24.w,
                              height: 24.h,
                              fit: BoxFit.cover,
                            ),
                          )
                        else
                          Icon(
                            Icons.person_2_outlined,
                            size: 24.w,
                            color: AppColors.graniteGray,
                          ),
                        if (ownerName != null) ...[
                          8.pw,
                          Flexible(
                            child: CustomText(
                              text: ownerName!,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                              color: AppColors.blackDark,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              // Bottom row: Save, Share, and Participate buttons
              Positioned(
                bottom: 16.h,
                left: 16.w,
                right: 16.w,
                child: Row(
                  children: [
                    // Save button
                    GestureDetector(
                      onTap: onFavoriteTap,
                      child: Container(
                        width: 40.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.asset(
                            isFavorited
                                ? Assets.assetsIconsFavsav
                                : Assets.assetsIconsSave,
                            height: 20.h,
                            width: 20.w,
                            color: isFavorited
                                ? AppColors.primaryColor
                                : AppColors.blackDark,
                          ),
                        ),
                      ),
                    ),
                    12.pw,
                    // Share button
                    GestureDetector(
                      onTap: onShareTap,
                      child: Container(
                        width: 40.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.asset(
                            Assets.assetsIconsShare,
                            height: 20.h,
                            width: 20.w,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    // Participate button
                    GestureDetector(
                      onTap: onParticipateTap,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 12.h,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: AppColors.primaryPink,
                        ),
                        child: CustomText(
                          text: 'participate'.tr(),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w800,
                          color: AppColors.white,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        8.ph,
        Visibility(
          visible: images.isNotEmpty,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              images.length,
              (index) => _ProductDetailsDot(
                isActive: index == currentImageIndex,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ProductDetailsPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
}

class _ProductDetailsDot extends StatelessWidget {
  const _ProductDetailsDot({required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
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
