part of '../favorites.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      builder: (context, state) {
        final cubit = context.read<FavoriteCubit>();

        if (state.isLoading) {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(
                color: AppColors.primaryColor,
              ),
            ),
          );
        }

        return Scaffold(
          backgroundColor: AppColors.lightGreyBackground,
          appBar: AppBar(
            leading: GestureDetector(
              onTap: () {
                context.pop();
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: AppColors.blackDark,
              ),
            ),
            backgroundColor: AppColors.lightGreyBackground,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                8.ph,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: CustomText(
                    text: 'favorites'.tr(),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                12.ph,
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: CustomCategoryTabs(
                    categories: const ["All", "Goods"],
                    selectedIndex: state.selectedCategoryIndex,
                    onCategorySelected: cubit.changeCategory,
                  ),
                ),
                12.ph,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'goods'.tr(),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      9.ph,
                      state.products.isEmpty
                          ? Center(
                              child: CustomText(
                                textAlign: TextAlign.center,
                                text: 'noFavoritesYet'.tr(),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          : SizedBox(),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.products.length,
                        itemBuilder: (context, index) {
                          final product = state.products[index];
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: CustomProductCard(
                              isNameCompany: true,
                              products: state.products,
                              product: product,
                              selectedCategoryIndex: index,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
