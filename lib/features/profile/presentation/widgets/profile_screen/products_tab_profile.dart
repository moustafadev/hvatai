part of '../../profile.dart';

class ProductsTabProfile extends StatelessWidget {
  const ProductsTabProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final goodsCubit = context.read<MyGoodsCubit>();
    return BlocBuilder<MyGoodsCubit, MyGoodsState>(
      bloc: goodsCubit,
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(color: AppColors.grey),
          );
        }
        if (state.errorMessage.isNotEmpty) {
          return Center(
            child: CustomText(text: state.errorMessage),
          );
        }

        final products = state.products;

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
                          text: 'Товары',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w800,
                        ),
                        BlocBuilder<ProfileCubit, ProfileState>(
                          builder: (context, profileState) {
                            if (profileState.isSeller) {
                              return GestureDetector(
                                onTap: () {
                                  context.push(
                                    AppRoutes.addProduct,
                                    extra: goodsCubit,
                                  );
                                },
                                child: SvgPicture.asset(
                                  Assets.assetsIconsAddCircle,
                                  width: 24,
                                  height: 24,
                                ),
                              );
                            }
                            return const SizedBox.shrink();
                          },
                        ),
                      ],
                    ),
                    12.ph,
                    MyGoodsTabs(
                      selectedIndex: state.selectedCategoryIndex,
                      onSelect: goodsCubit.changeCategory,
                    ),
                    20.ph,
                    CustomTextField(
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
                      onChanged: (_) {},
                    ),
                    20.ph,
                  ],
                ),
              ),
            ),
            if (products.isEmpty)
              SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                  child: CustomText(
                    text: 'Пока нет товаров',
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackTransparent40,
                  ),
                ),
              )
            else
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final product = products[index];
                      return MyCustomProductCard<MyGoodsCubit>(
                        product: product,
                        selectedCategoryIndex: state.selectedCategoryIndex,
                        cubit: goodsCubit,
                      );
                    },
                    childCount: products.length,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
