part of '../basket.dart';

class CustomProductCard extends StatelessWidget {
  final ProductModel product;
  final int selectedCategoryIndex;
  final bool isProductCompany;
  final bool isNameCompany;
  final List<ProductModel> products;

  const CustomProductCard({
    super.key,
    required this.product,
    this.isNameCompany = false,
    this.isProductCompany = false,
    required this.products,
    required this.selectedCategoryIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<ProductDetailsCubit>(),
      child: BlocConsumer<ProductDetailsCubit, ProductDetailsState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = context.read<ProductDetailsCubit>();
          final variant = product.variants.firstOrNull ?? VariantModel();
          final String imageUrl = product.images?.firstOrNull ?? '';

          return GestureDetector(
            onTap: () {
              context.push(
                AppRoutes.productDetails,
                extra: {'model': product, 'products': products, 'cubit': cubit},
              );
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
                          height: isNameCompany ? 150.h : 140.h,
                          imageSource: imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      if (variant.discountType != null &&
                          isNameCompany == false)
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (isNameCompany)
                                Padding(
                                  padding: EdgeInsets.only(bottom: 4.h),
                                  child: Row(
                                    children: [
                                      if (product.owner?.image != null &&
                                          product.owner!.image!.isNotEmpty)
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(100.r),
                                          child: CustomImage(
                                            height: 20.h,
                                            width: 20.h,
                                            imageSource: product.owner!.image!,
                                            fit: BoxFit.cover,
                                          ),
                                        )
                                      else
                                        Icon(
                                          Icons.person_2_outlined,
                                          size: 20.h,
                                          color: AppColors.graniteGray,
                                        ),
                                      2.pw,
                                      Expanded(
                                        child: CustomText(
                                          text: product.owner?.name ?? '',
                                          color: AppColors.blackDark,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w800,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Image.asset(
                                        Assets.assetsIconsStar,
                                        color: AppColors.goldenColor,
                                        height: 16.h,
                                        width: 16.w,
                                      ),
                                      4.pw,
                                      CustomText(
                                        text: "4.5",
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.blackDark,
                                      ),
                                    ],
                                  ),
                                ),
                              CustomText(
                                text: product.productName ?? '',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
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
                          Padding(
                            padding: EdgeInsets.only(top: 8.h),
                            child: Row(
                              children: [
                                CustomText(
                                  text: variant.price != null
                                      ? (variant.price! % 1 == 0
                                          ? "${variant.price!.toInt()} ₽"
                                          : "${variant.price} ₽")
                                      : "",
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                                if (isProductCompany) Spacer(),
                                if (isProductCompany)
                                  CircleAvatar(
                                    radius: 17.r,
                                    backgroundColor: AppColors.graniteGray,
                                    child: Image.asset(
                                      height: 20.h,
                                      width: 20.h,
                                      Assets.assetsIconsStore,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
