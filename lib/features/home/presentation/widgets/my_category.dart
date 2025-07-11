part of '../home.dart';

class MyCategory extends StatelessWidget {
  const MyCategory({super.key});

  static const interestKeys = [
    'Clothes',
    'shoes',
    'electronics',
    'sport',
    'toys',
    'beauty',
    'accessories',
    'furniture',
    'pet_supplies',
    'automotive',
    'video_games',
    'for_children',
    'books',
    'hobby',
  ];

  static const interestImages = [
    Assets.assetsImagesCloth,
    Assets.assetsImagesShose,
    Assets.assetsImagesHearPod,
    Assets.assetsImagesGym,
    Assets.assetsImagesMan,
    Assets.assetsImagesLipstick,
    Assets.assetsImagesWatch,
    Assets.assetsImagesDaraz,
    Assets.assetsImagesCat,
    Assets.assetsImagesTire,
    Assets.assetsImagesGamingPod,
    Assets.assetsImagesBaby,
    Assets.assetsImagesBooks,
    Assets.assetsImagesDaga,
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryTabsCubit, CategoryTabsState>(
      builder: (context, state) {
        final cubit = context.read<CategoryTabsCubit>();

        return ReusableCategoryWidget<CategoryTabsCubit, CategoryTabsState>(
          interestKeys: MyCategory.interestKeys,
          interestImages: MyCategory.interestImages,
          selectedIndices: state.selectedIndices.toList(),
          onTap: (index, key) => cubit.toggleInterest(index, key),
        );
      },
    );
  }
}
