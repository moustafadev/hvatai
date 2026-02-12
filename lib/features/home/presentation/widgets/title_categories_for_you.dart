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
            final liveStreamsCubit = context.read<LiveStreamsCubit>();
            final categoriesCubit = context.read<CategoriesCubit>();
            final categories = categoriesCubit.state.categories?.data ?? [];
            context.push(AppRoutes.categoriesForYou, extra: {
              'liveStreamsCubit': liveStreamsCubit,
              'categoriesCubit': categoriesCubit,
              'categories': categories,
            });
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
