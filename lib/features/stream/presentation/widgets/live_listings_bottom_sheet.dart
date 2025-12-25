part of '../stream.dart';

class LiveListingsBottomSheet extends StatefulWidget {
  final int streamId;
  final List<int> categoryIds;
  final int? currentStreamProductId;
  final bool isViewerMode;
  final bool showManagementActions;
  final ValueChanged<ProductModel>? onBuyNowPressed;

  const LiveListingsBottomSheet({
    super.key,
    required this.streamId,
    required this.categoryIds,
    this.currentStreamProductId,
    this.isViewerMode = false,
    this.showManagementActions = true,
    this.onBuyNowPressed,
  });

  @override
  State<LiveListingsBottomSheet> createState() =>
      _LiveListingsBottomSheetState();
}

class _LiveListingsBottomSheetState extends State<LiveListingsBottomSheet> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<LiveListingsShopCubit>()
        ..initialize(
          streamId: widget.streamId,
          categoryIds: widget.categoryIds,
        ),
      child: BlocListener<LiveListingsShopCubit, LiveListingsShopState>(
        listenWhen: (previous, current) =>
            previous.isAddingProduct && !current.isAddingProduct,
        listener: (context, state) {
          // Close bottom sheet when product is successfully added (no error)
          if (!state.isAddingProduct && state.errorMessage == null) {
            Navigator.pop(context);
          }
        },
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.9,
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20.r),
                ),
              ),
              child: BlocBuilder<LiveListingsShopCubit, LiveListingsShopState>(
                builder: (context, state) {
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
                      // Header with title, back button (when in my products mode), and close button
                      BlocBuilder<LiveListingsShopCubit, LiveListingsShopState>(
                        builder: (context, state) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Back button (only when showing my products)
                                if (state.showMyProducts)
                                  GestureDetector(
                                    onTap: () {
                                      context
                                          .read<LiveListingsShopCubit>()
                                          .hideMyProductsMode();
                                    },
                                    child: Icon(
                                      Icons.arrow_back,
                                      size: 24.sp,
                                      color: AppColors.blackDark,
                                    ),
                                  )
                                else
                                  const SizedBox(width: 24),
                                // Title
                                Expanded(
                                  child: Center(
                                    child: CustomText(
                                      text: state.showMyProducts
                                          ? 'Мои товары'
                                          : 'Live Listings',
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
                          );
                        },
                      ),
                      SizedBox(height: 8.h),
                      // Search field
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: BlocBuilder<LiveListingsShopCubit,
                            LiveListingsShopState>(
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
                          if (state.showMyProducts) {
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
                          }
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: Row(
                              children: [
                                CustomText(
                                  text:
                                      '${state.filteredProducts.length} Items',
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
                        child: BlocBuilder<LiveListingsShopCubit,
                            LiveListingsShopState>(
                          builder: (context, state) {
                            if (state.showMyProducts) {
                              return MyProductsList(
                                state: state,
                                streamId: widget.streamId,
                              );
                            }
                            return LiveListingsContent(
                              state: state,
                              currentStreamProductId:
                                  widget.currentStreamProductId,
                              isViewerMode: widget.isViewerMode,
                              streamId: widget.streamId,
                              onBuyNowPressed: widget.onBuyNowPressed,
                            );
                          },
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            // Speech bubble and FAB button
            if (widget.showManagementActions)
              BlocBuilder<LiveListingsShopCubit, LiveListingsShopState>(
                builder: (context, state) {
                  return Positioned(
                    bottom: 20.h,
                    right: 16.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Add button - styled like products_tab_profile
                        GestureDetector(
                          onTap: () async {
                            final cubit = context.read<LiveListingsShopCubit>();

                            if (cubit.state.categoryIds.isEmpty) {
                              showFloatingMessageError(
                                  'Please select categories first');
                              return;
                            }

                            // Show bottom sheet with options
                            final option = await showModalBottomSheet<String>(
                              context: context,
                              backgroundColor: Colors.transparent,
                              builder: (ctx) => AddProductOptionsSheet(
                                streamId: widget.streamId,
                                allowedCategoryIds: cubit.state.categoryIds,
                                cubit: cubit,
                              ),
                            );

                            if (option == null || !mounted) return;

                            if (option == 'create') {
                              // Show add product bottom sheet
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                backgroundColor: Colors.transparent,
                                builder: (ctx) => AddProductBottomSheet(
                                  allowedCategoryIds: cubit.state.categoryIds,
                                ),
                              );
                              if (mounted) {
                                cubit.getMyProducts();
                                await cubit.getStreamProducts(
                                  streamId: widget.streamId,
                                  categoryIds: cubit.state.categoryIds,
                                );
                              }
                            } else if (option == 'select') {
                              cubit.showMyProductsMode();
                            }
                          },
                          child: SvgPicture.asset(
                            Assets.assetsIconsAdd,
                            width: 45.w,
                            height: 45.h,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
