part of '../profile.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyGoodsCubit, MyGoodsState>(builder: (context, state) {
      final product = state.product;
      final variant = product.variants.first;
      final pageController =
          PageController(initialPage: state.currentImageIndex);

      final images = product.images ??
          [
          ];
      return Scaffold(
        backgroundColor: AppColors.lightGreyBackground,
        appBar: AppBar(
          backgroundColor: AppColors.lightGreyBackground,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: AppColors.blackDark),
            onPressed: () => context.pop(),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.close, color: AppColors.blackDark),
              onPressed: () => context.pop(),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 300.h,
                child: PageView.builder(
                  controller: pageController,
                  itemCount: images.isEmpty ? 1 : images.length,
                  onPageChanged: (index) {
                    context.read<MyGoodsCubit>().changeImageIndex(index);
                  },
                  itemBuilder: (context, index) {
                    if (images.isEmpty) {
                      return _buildPlaceholder();
                    }
                    return CachedNetworkImage(
                      imageUrl: images[index],
                      width: double.infinity,
                      height: 300.h,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => _buildPlaceholder(),
                      errorWidget: (context, url, error) => _buildPlaceholder(),
                    );
                  },
                ),
              ),
              8.ph,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  images.isEmpty ? 1 : images.length,
                  (index) => _buildDot(index == state.currentImageIndex),
                ),
              ),
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
                        CustomText(
                          text: product.productName ?? '',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w800,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 2),
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: CustomText(
                            text: variant.price != null
                                ? (variant.price! % 1 == 0
                                    ? "${variant.price!.toInt()} ₽"
                                    : "${variant.price} ₽")
                                : "",
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w800,
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                    8.ph,
                    Row(
                      children: [
                        CustomText(
                          text: 'Электроника • Смартфоны',
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
                            text: '${variant.stock} шт.',
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.blackLite,
                          ),
                        ),
                        8.pw,
                        Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: AppColors.gray),
                            child: CustomText(
                              text: product.saleType.isNotEmpty
                                  ? "${product.saleType[0].toUpperCase()}${product.saleType.substring(1)}"
                                  : "",
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.blackLite,
                            )),
                      ],
                    ),
                    8.ph,
                    CustomText(
                      text: product.productDescription ?? '',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    17.ph,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                            text: 'pickup'.tr(),
                            color: AppColors.blackDark,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700),
                        CustomText(
                            text: !product.selfPickup
                                ? 'free'.tr()
                                : 'notFree'.tr(),
                            color: AppColors.blackDark,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700),
                      ],
                    ),
                    30.ph,
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  Widget _buildPlaceholder() {
    return Container(
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
      width: isActive ? 12.w : 8.w,
      height: 8.h,
      decoration: BoxDecoration(
        color: isActive ? AppColors.blackDark : AppColors.greyBorder,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
