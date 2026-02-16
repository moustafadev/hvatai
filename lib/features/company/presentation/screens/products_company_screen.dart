part of '../company.dart';

class ProductsCompanyScreen extends StatelessWidget {
  const ProductsCompanyScreen({
    super.key,
    required this.userId,
    this.userName,
  });

  final int userId;
  final String? userName;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<CartProductDetailsCubit>(),
      child: ProductsCompanyTab(
        userId: userId,
        userName: userName,
      ),
    );
  }
}

class ProductsCompanyTab extends StatelessWidget {
  const ProductsCompanyTab({
    required this.userId,
    this.userName,
    super.key,
  });

  final int userId;
  final String? userName;

  void _showRewardInfoSheet(BuildContext context, int userId) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.r),
        ),
      ),
      builder: (_) => SendRewardInfoBottomSheet(userId: userId),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlocBuilder<CompanyCubit, CompanyState>(
          builder: (context, state) {
            if (state.isLoadingProducts && state.products.isEmpty) {
              return const Center(
                child: CustomCircularProgrressIndicator(),
              );
            }

            if (state.errorMessageProducts.isNotEmpty) {
              return _CompanyProductsError(
                message: state.errorMessageProducts,
                onRetry: () =>
                    context.read<CompanyCubit>().fetchProducts(userId),
              );
            }

            if (state.products.isEmpty) {
              return Center(
                child: CustomText(
                  text: 'No products found',
                  fontWeight: FontWeight.w600,
                ),
              );
            }

            final cartCubit = context.read<CartProductDetailsCubit>();

            return CustomScrollView(
              physics: ClampingScrollPhysics(),
              slivers: [
                SliverPadding(
                  padding: EdgeInsets.only(
                    left: 16.w,
                    right: 16.w,
                    top: 12.h,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'goods'.tr(),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w800,
                        ),
                        12.ph,
                        ProductsFilterChips(
                          selectedIndex: 0, // TODO: Get from state
                          onSelect: (index) {
                            // TODO: Handle filter selection
                            debugPrint('Selected filter index: $index');
                          },
                        ),
                        20.ph,
                        Row(
                          children: [
                            Expanded(
                              child: CustomTextField(
                                height: 40,
                                fillColor: AppColors.white,
                                borderRadius: BorderRadius.circular(10.r),
                                hintText: 'find'.tr(),
                                prefixIcon: Image.asset(
                                  Assets.assetsIconsSearch,
                                  color: AppColors.blackDark,
                                  height: 22.h,
                                  width: 22.w,
                                ),
                                onChanged: (text) {
                                  context
                                      .read<CompanyCubit>()
                                      .onSearchChanged(text);
                                },
                              ),
                            ),
                            12.pw,
                            GestureDetector(
                              onTap: () {
                                ProductsFilterBottomSheet.show(
                                  context,
                                  initialSortOption: context
                                      .read<CompanyCubit>()
                                      .state
                                      .selectedSortOption,
                                  onApply: (sortOption) {
                                    context
                                        .read<CompanyCubit>()
                                        .sortProducts(sortOption);
                                  },
                                );
                              },
                              child: SvgPicture.asset(
                                Assets.assetsIconsFilter,
                                width: 24.w,
                                height: 24.h,
                              ),
                            ),
                          ],
                        ),
                        20.ph,
                      ],
                    ),
                  ),
                ),
                if (state.products.isEmpty)
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(
                      child: CustomText(
                        text: 'No products found',
                        fontWeight: FontWeight.w600,
                        color: AppColors.blackTransparent40,
                      ),
                    ),
                  )
                else
                  SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final product = state.filteredProducts[index];
                          return Padding(
                            padding: EdgeInsets.only(
                              bottom: index < state.filteredProducts.length - 1
                                  ? 12.h
                                  : 20.h,
                            ),
                            child: CustomProductCard(
                              product: product,
                              selectedCategoryIndex: index,
                              color: AppColors.background,
                              isProductCompany: true,
                              showFixed: false,
                              isNameCompany: false,
                              showSaleTypeChip: true,
                              productDetailsCubit: cartCubit,
                            ),
                          );
                        },
                        childCount: state.filteredProducts.length,
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
        // Fixed bottom buttons
        BlocBuilder<CompanyCubit, CompanyState>(
          builder: (context, companyState) {
            final user = companyState.user;
            final isSubscribed = companyState.isSubscribed;
            final isToggleLoading = companyState.isToggleLoading;
            final companyCubit = context.read<CompanyCubit>();

            if (user == null) {
              return const SizedBox.shrink();
            }

            return Positioned(
              left: 16.w,
              right: 16.w,
              bottom: 0,
              child: SafeArea(
                top: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Subscribe button
                    CustomButton(
                        title: isSubscribed
                            ? 'unsubscribe'.tr()
                            : 'subscribe'.tr(),
                        color: isSubscribed
                            ? AppColors.white
                            : AppColors.blackDark,
                        textColor: isSubscribed
                            ? AppColors.blackDark
                            : AppColors.white,
                        colorBorderSide:
                            isSubscribed ? AppColors.blackDark : null,
                        isLoading: isToggleLoading,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w800,
                        height: 54,
                        radius: 10.r,
                        onPressed: () {
                          context.push<bool>(
                            AppRoutes.awardsGift,
                            extra: {
                              'user': user,
                              'isSubscribed': isSubscribed,
                              'companyCubit': companyCubit,
                            },
                          ).then((value) {
                            if (value != null && context.mounted) {
                              companyCubit.syncSubscriptionStatus(value);
                            }
                          });
                        }),
                    8.ph,
                    // Send reward button
                    CustomButton(
                      title: 'sendReward'.tr(),
                      color: AppColors.blackDark,
                      textColor: AppColors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w800,
                      height: 54,
                      radius: 10.r,
                      onPressed: () => _showRewardInfoSheet(context, userId),
                      widget: Image.asset(
                        Assets.assetsIconsTips,
                        height: 20,
                        width: 20,
                        color: AppColors.white,
                      ),
                    ),
                    16.ph,
                  ],
                ),
              ),
            );
          },
        ),
        // Cart FAB
        Positioned(
          right: 16.w,
          bottom: 140.h, // Above the fixed buttons
          child: const CartFloatingActionButton(),
        ),
      ],
    );
  }
}

class _CompanyProductsError extends StatelessWidget {
  const _CompanyProductsError({
    required this.message,
    required this.onRetry,
  });

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomText(
              text: message,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.center,
              color: AppColors.red,
            ),
            16.ph,
            CustomButton(
              title: 'retry'.tr(),
              onPressed: onRetry,
            ),
          ],
        ),
      ),
    );
  }
}
