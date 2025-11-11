part of '../stream.dart';

class LiveListingsBottomSheet extends StatefulWidget {
  final int streamId;

  const LiveListingsBottomSheet({
    super.key,
    required this.streamId,
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

  Widget _buildContent(LiveListingsShopState state) {
    if (state.isLoading) {
      return const Center(
        child: CircularProgressIndicator(
          color: AppColors.grey,
        ),
      );
    }

    final filteredProducts = state.filteredProducts;

    if (filteredProducts.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Placeholder for empty state illustration
            Container(
              width: 120.w,
              height: 120.h,
              decoration: BoxDecoration(
                color: AppColors.goldenColor.withOpacity(0.3),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.inbox_outlined,
                size: 60.sp,
                color: AppColors.goldenColor,
              ),
            ),
            SizedBox(height: 24.h),
            CustomText(
              text: "There's nothing here at the moment!",
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.blackDark,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      itemCount: filteredProducts.length,
      itemBuilder: (context, index) {
        final streamProduct = filteredProducts[index];
        return _buildProductCard(streamProduct);
      },
    );
  }

  Widget _buildSpeechBubble() {
    return IntrinsicWidth(
      child: Stack(
        children: [
          // Speech bubble body
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            decoration: BoxDecoration(
              color: AppColors.blackColorIcon,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomText(
                  text: 'No Inventory!',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white,
                ),
                SizedBox(height: 4.h),
                CustomText(
                  text: 'Tap here to create new products.',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white,
                ),
              ],
            ),
          ),
          // Pointer triangle
          Positioned(
            bottom: -6.h,
            right: 12.w,
            child: CustomPaint(
              size: Size(12.w, 12.h),
              painter: PointerPainter(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard(StreamProductItemModel streamProduct) {
    final product = streamProduct.product;
    if (product == null) {
      return const SizedBox.shrink();
    }
    print("product: ${product.toJson()}");

    final variant = product.variants.firstOrNull ?? VariantModel();
    final String imageUrl = product.images.firstOrNull ?? '';

    return GestureDetector(
      onTap: () {
        // TODO: Navigate to product details if needed
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 12.h),
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
                    height: 140.h,
                    imageSource: imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                if (variant.discountType != null)
                  Positioned(
                    top: 8.h,
                    left: 8.w,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 4.h,
                      ),
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
                height: 140.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: product.productName ?? '',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    CustomText(
                      text: variant.price != null
                          ? (variant.price! % 1 == 0
                              ? "${variant.price!.toInt()} ₽"
                              : "${variant.price} ₽")
                          : "",
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    BlocBuilder<LiveListingsShopCubit, LiveListingsShopState>(
                      builder: (context, cubitState) {
                        return CustomButton(
                          title: 'Start Auction',
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          onPressed: cubitState.isStartingAuction
                              ? null
                              : () {
                                  context
                                      .read<LiveListingsShopCubit>()
                                      .startAuction(
                                        streamId: widget.streamId,
                                        product: streamProduct,
                                      );
                                },
                        );
                      },
                    ),
                    5.ph,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<LiveListingsShopCubit>()
        ..getStreamProducts(streamId: widget.streamId),
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
                color: AppColors.white,
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
                            color: AppColors.grey,
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
                            const Spacer(),
                            CustomText(
                              text: 'Live Listings',
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w800,
                              color: AppColors.blackDark,
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: Icon(
                                Icons.close,
                                size: 24.sp,
                                color: AppColors.blackDark,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.h),
                      // Tabs
                      BlocBuilder<LiveListingsShopCubit, LiveListingsShopState>(
                        builder: (context, state) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children:
                                    List.generate(state.tabs.length, (index) {
                                  return Padding(
                                    padding: EdgeInsets.only(right: 8.w),
                                    child: GestureDetector(
                                      onTap: () {
                                        context
                                            .read<LiveListingsShopCubit>()
                                            .selectTab(index);
                                      },
                                      child: IntrinsicWidth(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 12.w,
                                                vertical: 8.h,
                                              ),
                                              child: CustomText(
                                                text: state.tabs[index],
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w700,
                                                color: state.selectedTabIndex ==
                                                        index
                                                    ? AppColors.blackDark
                                                    : AppColors.blackDark
                                                        .withOpacity(0.6),
                                              ),
                                            ),
                                            if (state.selectedTabIndex == index)
                                              Container(
                                                height: 2.h,
                                                decoration: BoxDecoration(
                                                  color: AppColors.blackDark,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          1.r),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            ),
                          );
                        },
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
                      SizedBox(height: 24.h),
                      // Content: Loading, Products, or Empty state
                      Expanded(
                        child: _buildContent(state),
                      ),
                    ],
                  );
                },
              ),
            ),
            // Speech bubble and FAB button
            BlocBuilder<LiveListingsShopCubit, LiveListingsShopState>(
              builder: (context, state) {
                final showNoInventory =
                    !state.isLoading && state.filteredProducts.isEmpty;

                return Positioned(
                  bottom: 20.h,
                  right: 16.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Speech bubble - only show when no products
                      if (showNoInventory)
                        Padding(
                          padding: EdgeInsets.only(bottom: 12.h, right: 4.w),
                          child: _buildSpeechBubble(),
                        ),
                      // Yellow FAB button
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (ctx) => Container(
                              height: MediaQuery.of(context).size.height * 0.9,
                              decoration: BoxDecoration(
                                color: AppColors.lightGreyBackground,
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20.r),
                                ),
                              ),
                              child: Column(
                                children: [
                                  // Drag handle
                                  Center(
                                    child: Container(
                                      width: 40.w,
                                      height: 4.h,
                                      margin: EdgeInsets.only(
                                          top: 12.h, bottom: 8.h),
                                      decoration: BoxDecoration(
                                        color: AppColors.grey,
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                      ),
                                    ),
                                  ),

                                  Expanded(child: const NewProductWidgetBody()),
                                ],
                              ),
                            ),
                          );
                        },
                        child: Container(
                          width: 56.w,
                          height: 56.h,
                          decoration: BoxDecoration(
                            color: AppColors.goldenColor,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.goldenColor.withOpacity(0.3),
                                blurRadius: 8,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.add,
                            color: AppColors.blackDark,
                            size: 28.sp,
                          ),
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

class PointerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.blackColorIcon
      ..style = PaintingStyle.fill;

    // Draw triangular pointer pointing down and to the right
    final path = Path();
    path.moveTo(0, 0); // Top left of triangle
    path.lineTo(size.width, 0); // Top right of triangle
    path.lineTo(size.width / 2, size.height); // Bottom point (pointing down)
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
