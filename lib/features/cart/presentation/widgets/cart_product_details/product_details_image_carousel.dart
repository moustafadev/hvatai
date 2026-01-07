part of '../../cart.dart';

class ProductDetailsImageCarousel extends StatelessWidget {
  const ProductDetailsImageCarousel({
    super.key,
    required this.images,
    required this.pageController,
    required this.currentImageIndex,
    required this.onPageChanged,
  });

  final List<String> images;
  final PageController pageController;
  final int currentImageIndex;
  final ValueChanged<int> onPageChanged;

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
          child: PageView.builder(
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
      width: isActive ? 12.w : 8.w,
      height: 8.h,
      decoration: BoxDecoration(
        color: isActive ? AppColors.blackDark : AppColors.greyBorder,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
