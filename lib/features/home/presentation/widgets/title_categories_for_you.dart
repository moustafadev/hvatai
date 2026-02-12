part of '../home.dart';

class TitleCategoriesForYou extends StatelessWidget {
  const TitleCategoriesForYou({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(
          text: 'categoriesForYou'.tr(),
          fontWeight: FontWeight.w800,
          fontSize: 20.sp,
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            openCategoriesForYou(context);
          },
          child: SvgPicture.asset(
            Assets.assetsIconsDoubleAltArrow,
            width: 14.w,
            height: 14.h,
          ),
        )
      ],
    );
  }
}

Future<void> openCategoriesForYou(BuildContext context) async {
  final categoriesCubit = context.read<CategoriesCubit>();
  final liveStreamsCubit = context.read<LiveStreamsCubit>();

  final favorites = categoriesCubit.state.favoriteCategories?.data ?? [];

  final result = await context.push<List<int>>(
    AppRoutes.categoriesForYou,
    extra: {
      'favorites': favorites,
      'initialSelectedIds': categoriesCubit.state.selectedFavoriteCategoryIds,
    },
  );

  if (result == null) return; // ✅ back pressed, ignore

  // ✅ Apply ONLY after pop result
  categoriesCubit.applyFavSelection(
    ids: result,
  );

  liveStreamsCubit.fetchLiveStreams(
    isRefresh: true,
    categoryIds: result,
  );
}
