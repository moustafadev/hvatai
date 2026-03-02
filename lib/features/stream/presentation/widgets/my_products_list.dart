part of '../stream.dart';

class MyProductsList extends StatelessWidget {
  const MyProductsList({super.key, 
    required this.state,
    required this.streamId,
  });

  final LiveListingsShopState state;
  final int streamId;

  @override
  Widget build(BuildContext context) {
    if (state.isMyProductsLoading) {
      return const Center(
        child: CircularProgressIndicator(
          color: AppColors.grey,
        ),
      );
    }

    if (state.myProductsError != null) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: state.myProductsError!,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.blackDark,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.h),
          CustomButton(
            title: 'Retry',
            onPressed: () =>
                context.read<LiveListingsShopCubit>().getMyProducts(),
          ),
        ],
      );
    }

    final filteredProducts = state.filteredMyProducts;

    if (filteredProducts.isEmpty) {
      return Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.assetsImagesEmptyProducts,
                height: 60,
                width: 60,
              ),
              SizedBox(height: 24.h),
              CustomText(
                text: 'У вас пока нет товаров',
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.blackDark,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            itemCount: filteredProducts.length,
            itemBuilder: (context, index) {
              final product = filteredProducts[index];
              final isSelected = product.id != null &&
                  state.selectedProductIds.contains(product.id);
              return Padding(
                padding: EdgeInsets.only(bottom: 12.h),
                child: GestureDetector(
                  onTap: () {
                    if (product.id != null) {
                      context
                          .read<LiveListingsShopCubit>()
                          .toggleProductSelection(product.id!);
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(12.r),
                      border: isSelected
                          ? Border.all(
                              color: AppColors.primaryColor,
                              width: 2,
                            )
                          : Border.all(
                              color: Colors.transparent,
                              width: 2,
                            ),
                    ),
                    child: MyProductSelectionCard(
                      product: product,
                      isSelected: isSelected,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        // Start Stream button
        Padding(
          padding: EdgeInsets.all(16.w),
          child: SizedBox(
            width: double.infinity,
            child: CustomButton(
              title: 'Начать стрим',
              onPressed: state.selectedProductIds.isEmpty
                  ? null
                  : () async {
                      await context
                          .read<LiveListingsShopCubit>()
                          .addSelectedProductsToStream();
                      if (context.mounted) {
                        await context
                            .read<LiveListingsShopCubit>()
                            .getStreamProducts(
                              streamId: streamId,
                              categoryIds: state.categoryIds,
                            );
                        if (context.mounted) {
                          context
                              .read<LiveListingsShopCubit>()
                              .hideMyProductsMode();
                        }
                      }
                    },
              disabled: state.selectedProductIds.isEmpty,
            ),
          ),
        ),
      ],
    );
  }
}

class MyProductSelectionCard extends StatelessWidget {
  const MyProductSelectionCard({super.key, 
    required this.product,
    required this.isSelected,
  });

  final ProductModel product;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final variant = product.variants.firstOrNull ?? VariantModel();
    final categoryName = product.category?.name ?? 'Без категории';
    final quantity = variant.stock;
    final saleType = product.saleType.toLowerCase();
    final isAuction = saleType == 'auction';
    final saleLabel = isAuction ? 'Аукцион' : 'Фикс';
    final saleColor =
        isAuction ? const Color(0xFF7BE4EE) : const Color(0xFFA1F4A8);
    final price = variant.price ?? 0.0;
    final priceLabel = price == 0
        ? '—'
        : '${price.toStringAsFixedSmart} ₽';

    return Container(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Category
                    CustomText(
                        text: categoryName,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.text),
                    SizedBox(height: 4.h),
                    // Product name
                    CustomText(
                      text: product.productName ?? '',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.text,
                    ),
                    SizedBox(height: 4.h),
                    // Quantity tag
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                      decoration: BoxDecoration(
                        color: AppColors.greyButton,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: CustomText(
                          text: '$quantity шт.',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.text),
                    ),
                  ],
                ),
              ),
              // Sale type tag
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: saleColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: CustomText(
                  text: saleLabel,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.text,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // Current bid/price
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Текущая ставка:',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.text,
                  ),
                  SizedBox(height: 2.h),
                  CustomText(
                    text: priceLabel,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.text,
                  ),
                ],
              ),
              // Settings icon
              SvgPicture.asset(
                Assets.assetsIconsSettings2,
                width: 32.w,
                height: 32.h,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

