part of '../stream.dart';

class AddProductBottomSheet extends StatelessWidget {
  const AddProductBottomSheet({
    super.key,
    required this.allowedCategoryIds,
    required this.streamId,
  });

  final List<int> allowedCategoryIds;
  final int streamId;

  /// Check if the form is disabled based on required fields in this form only
  bool _isFormDisabled(ProductFormState state) {
    // Required fields for this form:
    // 1. Name (Название)
    if (state.product.productName == null ||
        state.product.productName!.isEmpty) {
      return true;
    }

    // 2. Category (Категория)
    if (state.product.categoryId == null || state.product.categoryId == 0) {
      return true;
    }

    // 3. Starting bid (Стартовая ставка)
    if (state.product.variants.isEmpty ||
        state.product.variants.first.price == null ||
        state.product.variants.first.price == 0.0) {
      return true;
    }

    // 4. Quantity (Количество) - should be at least 1
    if (state.product.variants.isEmpty ||
        state.product.variants.first.stock < 1) {
      return true;
    }

    return false;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => locator<ProductFormCubit>()
            ..getProductCategory()
            ..getLastUsedCategories(),
        ),
      ],
      child: Container(
        height: size.height * 0.9,
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.r),
          ),
        ),
        child: BlocBuilder<ProductFormCubit, ProductFormState>(
          builder: (context, state) {
            final cubit = context.read<ProductFormCubit>();
            return Column(
              children: [
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: 'Создание товара',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w800,
                        color: AppColors.blackDark,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Name field
                        CustomTextField(
                          hintText: 'Название',
                          initialValue: state.product.productName,
                          onChanged: (value) =>
                              cubit.updateField('name', value),
                        ),
                        SizedBox(height: 12.h),
                        // 2. Category dropdown - show all categories
                        BlocBuilder<ProductFormCubit, ProductFormState>(
                          builder: (context, categoryState) {
                            // Show loading indicator while categories are loading
                            if (categoryState.isLoading &&
                                categoryState.category.isEmpty) {
                              return Container(
                                padding: EdgeInsets.symmetric(vertical: 16.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 20.w,
                                      height: 20.h,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          AppColors.primaryColor,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 12.w),
                                    CustomText(
                                      text: 'Загрузка категорий...',
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.grey,
                                    ),
                                  ],
                                ),
                              );
                            }

                            final allCategories = categoryState.category;
                            if (allCategories.isEmpty) {
                              return CustomText(
                                text: 'Категории не найдены',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.grey,
                              );
                            }

                            final selectedCategoryId =
                                categoryState.product.categoryId;
                            final selectedCategory = allCategories.firstWhere(
                              (c) => c.id == selectedCategoryId,
                              orElse: () => MainCategoryModel(),
                            );

                            return CustomDropdown(
                              hintText: 'Категория',
                              value: selectedCategory.name,
                              onChanged: (value) {
                                if (value != null) {
                                  final category = allCategories.firstWhere(
                                    (c) => c.name == value,
                                    orElse: () => MainCategoryModel(),
                                  );
                                  if (category.id != null) {
                                    cubit.setCategory(
                                        category.id!, category.name);
                                  }
                                }
                              },
                              items: allCategories
                                  .map((category) => DropdownMenuItem(
                                        value: category.name,
                                        child: Text(category.name ?? ''),
                                      ))
                                  .toList(),
                            );
                          },
                        ),
                        SizedBox(height: 12.h),
                        // Last used categories
                        LastUsedCategoriesWidget(),
                        SizedBox(height: 12.h),
                        // 3. Sale type button
                        BlocBuilder<ProductFormCubit, ProductFormState>(
                          builder: (context, saleState) {
                            return SaleTypeButton(
                              selectedSaleType: saleState.product.saleType,
                              onTap: (value) =>
                                  cubit.updateField('saleType', value),
                            );
                          },
                        ),
                        SizedBox(height: 12.h),
                        // 4. Starting bid
                        CustomTextField(
                          hintText: 'Стартовая ставка',
                          initialValue: state.product.variants.isNotEmpty &&
                                  state.product.variants.first.price != null
                              ? state.product.variants.first.price.toString()
                              : '',
                          onChanged: (value) =>
                              cubit.updateField('startingBid', value),
                        ),
                        SizedBox(height: 12.h),
                        // 5. Time until next bid dropdown
                        // BlocBuilder<ProductFormCubit, ProductFormState>(
                        //   builder: (context, bidState) {
                        //     final timeOptions = [
                        //       '10 c',
                        //       '20 c',
                        //       '30 c',
                        //       '40 c',
                        //       '50 c',
                        //       '60 c',
                        //       '90 c'
                        //     ];

                        //     // Get current value from state and convert to display format
                        //     String? currentValue;
                        //     // Check if deliveryTime contains a bid time value (should be just a number)
                        //     if (bidState.product.variants.first.price != null &&
                        //         bidState.product.variants.first.price != 0.0) {
                        //       final storedValue =
                        //           bidState.product.variants.first.price.toString();
                        //       // Check if it's a number (bid time) or contains text (delivery time)
                        //       final isNumeric =
                        //           RegExp(r'^\d+$').hasMatch(storedValue);
                        //       if (isNumeric) {
                        //         // Convert stored seconds (e.g., "10") to display format (e.g., "10 c")
                        //         final displayValue = '$storedValue c';
                        //         // Check if the display value exists in options
                        //         if (timeOptions.contains(displayValue)) {
                        //           currentValue = displayValue;
                        //         }
                        //       }
                        //     }

                        //     return CustomDropdown(
                        //       hintText: 'Время до следующей ставки',
                        //       value: currentValue,
                        //       onChanged: (value) {
                        //         if (value != null) {
                        //           // Extract number from string like "10 c" -> "10"
                        //           final seconds = value.replaceAll(' c', '');
                        //           cubit.updateField('bidTime', seconds);
                        //         }
                        //       },
                        //       items: timeOptions
                        //           .map((time) => DropdownMenuItem(
                        //                 value: time,
                        //                 child: Text(time),
                        //               ))
                        //           .toList(),
                        //     );
                        //   },
                        // ),
                        // SizedBox(height: 12.h),
                        // // 6. Quantity: Количество: on left, minus - quantity - plus on right
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'Количество:',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.blackDark,
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    cubit.decreaseQuantity();
                                  },
                                  child: SvgPicture.asset(
                                    Assets.assetsIconsMinusCircle,
                                    width: 23.w,
                                    height: 23.h,
                                  ),
                                ),
                                SizedBox(width: 16.w),
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12.r, vertical: 6.h),
                                  child: CustomText(
                                    text:
                                        '${state.product.variants.isNotEmpty ? state.product.variants.first.stock : 1}',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.blackDark,
                                  ),
                                ),
                                SizedBox(width: 16.w),
                                GestureDetector(
                                  onTap: () {
                                    cubit.increaseQuantity();
                                  },
                                  child: SvgPicture.asset(
                                    Assets.assetsIconsAddCircle,
                                    width: 23.w,
                                    height: 23.h,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 12.h),

                        SizedBox(height: 24.h),
                      ],
                    ),
                  ),
                ),
                // Create button
                Padding(
                  padding: EdgeInsets.all(16.w),
                  child: SizedBox(
                    width: double.infinity,
                    child: CustomButton(
                      title: 'Создать',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w800,
                      textColor: _isFormDisabled(state)
                          ? AppColors.disabledBackground
                          : AppColors.white,
                      onPressed: _isFormDisabled(state)
                          ? null
                          : () async {
                              // Add the product and get the created product
                              final createdProduct = await cubit
                                  .addProduct(context, isStream: true);
                              // If product was created successfully, add it to stream
                              if (createdProduct != null &&
                                  createdProduct.id != null &&
                                  context.mounted) {
                                // Access LiveListingsShopCubit from the widget tree
                                final liveListingsCubit =
                                    context.read<LiveListingsShopCubit>();
                                await liveListingsCubit.addProductToStream(
                                  streamId: streamId,
                                  product: createdProduct,
                                );

                                // Close the bottom sheet after adding to stream
                                if (context.mounted) {
                                  Navigator.pop(context);
                                  // Reset the form after closing the bottom sheet
                                  cubit.resetProduct();
                                }
                              } else if (context.mounted) {
                                // Close even if product creation failed
                                Navigator.pop(context);
                                // Reset the form after closing the bottom sheet
                                cubit.resetProduct();
                              }
                            },
                      disabled: _isFormDisabled(state),
                      isLoading: state.isLoading,
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
              ],
            );
          },
        ),
      ),
    );
  }
}
