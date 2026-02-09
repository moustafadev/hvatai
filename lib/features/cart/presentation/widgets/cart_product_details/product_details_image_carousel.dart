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
    this.isInLiveAuction = false,
    this.isJoiningStream = false,
  });

  final List<String> images;
  final PageController pageController;
  final int currentImageIndex;
  final ValueChanged<int> onPageChanged;
  final bool isFavorited;
  final VoidCallback onFavoriteTap;
  final VoidCallback onShareTap;
  final VoidCallback onParticipateTap;
  final bool isInLiveAuction;
  final bool isJoiningStream;

  /// Check if a file path is a video
  bool _isVideoFile(String path) {
    final extension = path.toLowerCase().split('.').last;
    final videoExtensions = ['mp4', 'mov', 'avi', 'mkv', 'webm'];
    return videoExtensions.contains(extension);
  }

  @override
  Widget build(BuildContext context) {
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
                    12.pw,

                    // Participate button - only show if in live auction
                    if (isInLiveAuction)
                      Expanded(
                        child: CustomButton(
                          title: 'Участвует в аукционе',
                          onPressed: onParticipateTap,
                          color: AppColors.text,
                          textColor: AppColors.white,
                          fontSize: 16.sp,
                          radius: 10.r,
                          isLoading: isJoiningStream,
                          fontWeight: FontWeight.w800,
                          padding: EdgeInsets.zero,
                          height: 40.h,
                        ),
                      )
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
