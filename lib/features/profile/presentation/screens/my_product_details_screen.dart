part of '../profile.dart';

class MyProductDetailsScreen extends StatelessWidget {
  const MyProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<MyGoodsCubit>().resetImageIndex();
    return BlocBuilder<MyGoodsCubit, MyGoodsState>(builder: (context, state) {
      final product = state.product;
      final variant =
          product.variants.isNotEmpty ? product.variants.first : VariantModel();

      final deliveryType = product.deliveryType ?? '';
      final deliveryText = deliveryType.isNotEmpty
          ? '${deliveryType[0].toUpperCase()}${deliveryType.substring(1)}'
          : 'notAvailable'.tr();

      final images = product.images ?? [];

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 300.h,
                child: PageView.builder(
                  controller: state.pageController,
                  itemCount: images.isEmpty ? 1 : images.length,
                  onPageChanged: (index) {
                    context.read<MyGoodsCubit>().changeImageIndex(index);
                  },
                  itemBuilder: (context, index) {
                    return images.isEmpty
                        ? _buildPlaceholder()
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
                    (index) => _buildDot(index == state.currentImageIndex),
                  ),
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
                        Flexible(
                          child: CustomText(
                            text: product.productName ?? '',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        if (variant.price != null)
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 2),
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: CustomText(
                              text: variant.price! % 1 == 0
                                  ? "${variant.price!.toInt()} ₽"
                                  : "${variant.price} ₽",
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w800,
                              color: AppColors.white,
                            ),
                          ),
                      ],
                    ),
                    8.ph,
                    if (product.category?.name != null)
                      Row(
                        children: [
                          CustomText(
                            text: '${product.category?.name} ',
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
                        if (product.saleType.isNotEmpty)
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 3),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: AppColors.gray),
                              child: CustomText(
                                text:
                                    "${product.saleType[0].toUpperCase()}${product.saleType.substring(1)}",
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.blackLite,
                              )),
                      ],
                    ),
                    8.ph,
                    if (product.productDescription?.isNotEmpty ?? false)
                      CustomText(
                        text: product.productDescription ?? '',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    17.ph,
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 9),
                      decoration: BoxDecoration(
                        color: AppColors.gray,
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                              text: 'delivery'.tr(),
                              color: AppColors.blackDark,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700),
                          CustomText(
                              text: deliveryText,
                              color: AppColors.blackDark,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700),
                        ],
                      ),
                    ),
                    9.ph,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                            text: 'pickup'.tr(),
                            color: AppColors.blackDark,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700),
                        CustomText(
                            text:
                                product.selfPickup ? 'free'.tr() : 'paid'.tr(),
                            color: AppColors.blackDark,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700),
                      ],
                    ),
                    30.ph
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
      width: isActive ? 12.w : 8.w,
      height: 8.h,
      decoration: BoxDecoration(
        color: isActive ? AppColors.blackDark : AppColors.greyBorder,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
