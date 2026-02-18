part of '../stream.dart';

class MyProductsSelectionBottomSheet extends StatelessWidget {
  const MyProductsSelectionBottomSheet({
    super.key,
    required this.streamId,
  });

  final int streamId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final cubit = locator<LiveListingsShopCubit>();
        // Fetch products with the specified categoryIds
        cubit.getMyProducts();
        return cubit;
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.9,
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.r),
          ),
        ),
        child: BlocBuilder<LiveListingsShopCubit, LiveListingsShopState>(
          builder: (context, state) {
            final cubit = context.read<LiveListingsShopCubit>();
            return Column(
              children: [
                // Drag handle
                Center(
                  child: Container(
                    width: 40.w,
                    height: 4.h,
                    margin: EdgeInsets.only(top: 12.h, bottom: 8.h),
                    decoration: BoxDecoration(
                      color: AppColors.greyButton,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                ),
                // Header with title and close button
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(width: 24),
                      // Title
                      Expanded(
                        child: Center(
                          child: CustomText(
                            text: 'Мои товары',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w800,
                            color: AppColors.blackDark,
                          ),
                        ),
                      ),
                      // Close button placeholder for alignment
                      const SizedBox(width: 24),
                    ],
                  ),
                ),
                SizedBox(height: 8.h),
                // Search field
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child:
                      BlocBuilder<LiveListingsShopCubit, LiveListingsShopState>(
                    builder: (context, state) {
                      return CustomTextField(
                        fillColor: AppColors.white,
                        height: 40,
                        borderRadius: BorderRadius.circular(10.r),
                        onChanged: (value) {
                          context
                              .read<LiveListingsShopCubit>()
                              .searchProducts(value);
                        },
                        hintText: 'find'.tr(),
                        prefixIcon: Image.asset(
                          Assets.assetsIconsSearch,
                          color: AppColors.blackDark,
                          height: 22.h,
                          width: 22.w,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 16.h),
                // Items count
                BlocBuilder<LiveListingsShopCubit, LiveListingsShopState>(
                  builder: (context, state) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Row(
                        children: [
                          CustomText(
                            text:
                                '${state.filteredMyProducts.length} ${state.filteredMyProducts.length == 1 ? 'товар' : 'товаров'}',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.blackDark,
                          ),
                        ],
                      ),
                    );
                  },
                ),
                SizedBox(height: 12.h),
                // Content: Loading, Products, or Empty state
                Expanded(
                  child:
                      BlocBuilder<LiveListingsShopCubit, LiveListingsShopState>(
                    builder: (context, state) {
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
                              onPressed: () => cubit.getMyProducts(),
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
                                    state.selectedProductIds
                                        .contains(product.id);
                                return Padding(
                                  padding: EdgeInsets.only(bottom: 12.h),
                                  child: GestureDetector(
                                    onTap: () {
                                      if (product.id != null) {
                                        cubit.toggleProductSelection(
                                            product.id!);
                                      }
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.white,
                                        borderRadius:
                                            BorderRadius.circular(12.r),
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
                          // Add to Stream button
                          Padding(
                            padding: EdgeInsets.all(16.w),
                            child: SizedBox(
                              width: double.infinity,
                              child: CustomButton(
                                title: 'Добавить в стрим',
                                isLoading: state.isAddingProduct,
                                onPressed: state.selectedProductIds.isEmpty
                                    ? null
                                    : () async {
                                        // Get the selected product
                                        final selectedProductId =
                                            state.selectedProductIds.first;
                                        final selectedProduct =
                                            state.myProducts.firstWhere(
                                          (p) => p.id == selectedProductId,
                                        );

                                        // Add to stream using parent cubit
                                        final success =
                                            await cubit.addProductToStream(
                                          streamId: streamId,
                                          product: selectedProduct,
                                        );
                                        if (context.mounted) {
                                          Navigator.of(context).pop(true);
                                        }

                                        if (success && context.mounted) {
                                          // Refresh stream products in parent cubit
                                          await cubit.getStreamProducts(
                                            streamId: streamId,
                                          );
                                          // Close this bottom sheet
                                        }
                                      },
                                disabled: state.selectedProductIds.isEmpty,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
