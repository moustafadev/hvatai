part of '../../profile.dart';

class ProductsTabProfile extends StatelessWidget {
  const ProductsTabProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyProductsCubit, MyProductsState>(
      builder: (context, myProductsState) {
        if (myProductsState.isShowingMyProducts) {
          // Show my products
          return const _MyProductsScrollView();
        } else {
          // Show favorites
          return const _FavoritesScrollView();
        }
      },
    );
  }
}

class _MyProductsScrollView extends StatelessWidget {
  const _MyProductsScrollView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyProductsCubit, MyProductsState>(
      builder: (context, state) {
        return _ProductsScrollViewContent(
          products: state.filteredProducts,
          isLoading: state.isLoading,
          errorMessage: state.errorMessage,
          isShowingMyProducts: true,
        );
      },
    );
  }
}

class _FavoritesScrollView extends StatelessWidget {
  const _FavoritesScrollView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      builder: (context, favoriteState) {
        return BlocBuilder<MyProductsCubit, MyProductsState>(
          builder: (context, myProductsState) {
            return _ProductsScrollViewContent(
              products: favoriteState.products,
              isLoading: favoriteState.isLoading,
              errorMessage: favoriteState.errorMessage,
              isShowingMyProducts: false,
            );
          },
        );
      },
    );
  }
}

class _ProductsScrollViewContent extends StatelessWidget {
  final List<ProductModel> products;
  final bool isLoading;
  final String errorMessage;
  final bool isShowingMyProducts;

  const _ProductsScrollViewContent({
    required this.products,
    required this.isLoading,
    required this.errorMessage,
    required this.isShowingMyProducts,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          sliver: SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'goods'.tr(),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w800,
                    ),
                    BlocBuilder<ProfileCubit, ProfileState>(
                      builder: (context, profileState) {
                        return BlocBuilder<MyProductsCubit, MyProductsState>(
                          builder: (context, state) {
                            return GestureDetector(
                              onTap: () async {
                                final result = await context.push<bool>(
                                  AppRoutes.addProduct,
                                );
                                if (result == true && context.mounted) {
                                  context
                                      .read<MyProductsCubit>()
                                      .getMyProducts();
                                }
                              },
                              child: SvgPicture.asset(
                                Assets.assetsIconsAddCircle,
                                width: 24,
                                height: 24,
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
                20.ph,
                BlocBuilder<MyProductsCubit, MyProductsState>(
                  builder: (context, state) {
                    return TabSwitchWidget(
                      isFirstSelected: state.isShowingMyProducts,
                      firstLabel: 'myProducts'.tr(),
                      secondLabel: 'favorites'.tr(),
                      onChanged: (isMyProducts) {
                        context
                            .read<MyProductsCubit>()
                            .toggleProductsView(isMyProducts);
                      },
                    );
                  },
                ),
                if (isShowingMyProducts) ...[
                  20.ph,
                  BlocBuilder<MyProductsCubit, MyProductsState>(
                    builder: (context, state) {
                      return ProductsFilterChips(
                        selectedIndex: state.selectedCategoryIndex,
                        onSelect: (index) {
                          context.read<MyProductsCubit>().changeCategory(index);
                        },
                      );
                    },
                  ),
                  12.ph,
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
                          onChanged: (value) {
                            context
                                .read<MyProductsCubit>()
                                .searchMyProducts(value);
                          },
                        ),
                      ),
                      // 12.pw,
                      // GestureDetector(
                      //   onTap: () {
                      //     ProductsFilterBottomSheet.show(
                      //       context,
                      //       initialSortOption: context
                      //           .read<MyProductsCubit>()
                      //           .state
                      //           .selectedSortOption,
                      //       onApply: (sortOption) {
                      //         context
                      //             .read<MyProductsCubit>()
                      //             .sortProducts(sortOption);
                      //       },
                      //     );
                      //   },
                      //   child: SvgPicture.asset(
                      //     Assets.assetsIconsFilter,
                      //     width: 20.w,
                      //     height: 20.h,
                      //   ),
                      // ),
                    ],
                  ),
                ]
              ],
            ),
          ),
        ),
        if (isLoading)
          SliverFillRemaining(
            hasScrollBody: false,
            child: const Center(
              child: CustomCircularProgressIndicator(),
            ),
          )
        else if (errorMessage.isNotEmpty)
          SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CustomText(
                text: errorMessage,
                fontWeight: FontWeight.w600,
                color: AppColors.blackTransparent40,
              ),
            ),
          )
        else if (products.isEmpty)
          SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CustomText(
                text: isShowingMyProducts
                    ? 'Пока нет товаров'
                    : 'Пока нет избранных товаров',
                fontWeight: FontWeight.w600,
                color: AppColors.blackTransparent40,
              ),
            ),
          )
        else
          SliverPadding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 100),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final product = products[index];
                  return BlocBuilder<MyProductsCubit, MyProductsState>(
                    builder: (context, state) {
                      return MyCustomProductCard(
                        product: product,
                        color: AppColors.background,
                        selectedCategoryIndex: state.selectedCategoryIndex,
                      );
                    },
                  );
                },
                childCount: products.length,
              ),
            ),
          ),
      ],
    );
  }
}
