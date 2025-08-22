part of '../search.dart';

class MyCategorySearch extends StatelessWidget {
  const MyCategorySearch({super.key});

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
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        final cubit = context.read<SearchCubit>();

        return ReusableCategoryWidget<SearchCubit, SearchState>(
          interestKeys: MyCategorySearch.interestKeys,
          interestImages: MyCategorySearch.interestImages,
          selectedIndices: state.selectedIndices.toList(),
          onTap: (index, key) => cubit.toggleInterest(index, key),
        );
      },
    );
  }
}
