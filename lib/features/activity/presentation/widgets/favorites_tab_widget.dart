part of '../activity.dart';

class FavoritesTabWidget extends StatelessWidget {
  const FavoritesTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivityCubit, ActivityState>(
      builder: (context, state) {
        if (state.isLoadingFavorites) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state.favoritesError.isNotEmpty) {
          return Center(
            child: CustomText(
              text: state.favoritesError,
              color: AppColors.hotPink,
            ),
          );
        }

        if (state.favorites.isEmpty) {
          return Center(
            child: CustomText(
              text: 'noFavoritesYet'.tr(),
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          );
        }

        return ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          itemCount: state.favorites.length,
          itemBuilder: (context, index) {
            final product = state.favorites[index];
            return Padding(
              padding: EdgeInsets.only(bottom: 12.h, top: 12.h),
              child: CustomProductCard(
                product: product,
                color: AppColors.background,
                selectedCategoryIndex: index,
                isNameCompany: true,
                products: state.favorites,
                showSaleTypeChip: false,
                showFixed: true,
              ),
            );
          },
        );
      },
    );
  }
}
