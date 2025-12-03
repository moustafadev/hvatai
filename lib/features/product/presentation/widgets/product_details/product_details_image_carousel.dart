part of '../../product.dart';

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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 300.h,
          child: PageView.builder(
            controller: pageController,
            itemCount: images.isEmpty ? 1 : images.length,
            onPageChanged: onPageChanged,
            itemBuilder: (context, index) {
              return images.isEmpty
                  ? _ProductDetailsPlaceholder()
                  : CustomImage(
                      height: 300.h,
                      imageSource: images[index],
                      fit: BoxFit.cover,
                    );
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
