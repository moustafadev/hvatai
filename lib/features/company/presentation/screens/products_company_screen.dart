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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => locator<CompanyProductsCubit>()..fetchProducts(userId),
        ),
        BlocProvider(
          create: (_) => locator<ProductDetailsCubit>(),
        ),
      ],
      child: _ProductsCompanyView(
        userId: userId,
        userName: userName,
      ),
    );
  }
}

class _ProductsCompanyView extends StatelessWidget {
  const _ProductsCompanyView({
    required this.userId,
    this.userName,
  });

  final int userId;
  final String? userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBackground,
      floatingActionButton:
          BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
        builder: (context, state) {
          return Container(
            decoration: BoxDecoration(
              color: AppColors.primaryPink,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: FloatingActionButton.extended(
              backgroundColor: AppColors.primaryPink,
              onPressed: () async {
                final result =
                    await context.push<double>(AppRoutes.allProductCart);
                if (!context.mounted) return;
                if (result != null) {
                  context.read<ProductDetailsCubit>().updateTotalPrice(result);
                }
              },
              icon: Image.asset(
                Assets.assetsIconsStore,
                height: 22.h,
                width: 22.w,
              ),
              label: CustomText(
                text: state.totalCartPrice % 1 == 0
                    ? "${state.totalCartPrice.toInt()} ₽"
                    : "${state.totalCartPrice} ₽",
                fontSize: 16.sp,
                fontWeight: FontWeight.w800,
              ),
            ),
          );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          50.ph,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: TopBarSearchWidget(
              isSearch: true,
              image: Assets.assetsIconsTune,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomText(
              text: 'goods'.tr(),
              fontSize: 20.sp,
              fontWeight: FontWeight.w800,
            ),
          ),
          12.ph,
          Expanded(
            child: BlocBuilder<CompanyProductsCubit, CompanyProductsState>(
              builder: (context, state) {
                if (state.isLoading && state.products.isEmpty) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.grey,
                    ),
                  );
                }

                if (state.errorMessage.isNotEmpty) {
                  return _CompanyProductsError(
                    message: state.errorMessage,
                    onRetry: () => context
                        .read<CompanyProductsCubit>()
                        .fetchProducts(userId),
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

                final cartCubit = context.read<ProductDetailsCubit>();

                return RefreshIndicator(
                  onRefresh: () => context
                      .read<CompanyProductsCubit>()
                      .fetchProducts(userId),
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...state.products.asMap().entries.map(
                                (entry) => CustomProductCard(
                                  product: entry.value,
                                  products: state.products,
                                  selectedCategoryIndex: entry.key,
                                  isProductCompany: true,
                                  showFixed: false,
                                  isNameCompany: false,
                                  showSaleTypeChip: true,
                                  productDetailsCubit: cartCubit,
                                ),
                              ),
                          100.ph,
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
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
