part of '../search.dart';

class MyCategorySearch extends StatelessWidget {
  const MyCategorySearch({
    super.key,
  });

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
    return BlocBuilder<SearchTabsCubit, SearchTabsState>(
      builder: (context, state) {
        final cubit = context.read<SearchTabsCubit>();

        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(interestImages.length, (index) {
              final isSelected = state.selectedIndices.contains(index);

              return Padding(
                padding: EdgeInsets.only(right: 12.w),
                child: GestureDetector(
                  onTap: () =>
                      cubit.toggleInterest(index, interestKeys[index].tr()),
                  child: Container(
                    width: 100.w,
                    height: 120.h,
                    decoration: BoxDecoration(
                      color: isSelected ? AppColors.primaryColor : null,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(2, 2),
                        ),
                      ],
                      border: isSelected
                          ? Border.all(width: 0.1, color: Colors.transparent)
                          : Border.all(color: Colors.white, width: 2),
                    ),
                    child: Padding(
                      padding:
                          isSelected ? EdgeInsets.all(1.5.r) : EdgeInsets.zero,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Column(
                          children: [
                            Center(
                              child: CustomText(
                                text: interestKeys[index].tr(),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColors.blackDark,
                                textAlign: TextAlign.center,
                                fontFamily: 'SFProRounded',
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 2.5,
                              ),
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: AppColors.gray,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                      radius: 4.r,
                                      backgroundColor: AppColors.primaryPink),
                                  5.pw,
                                  CustomText(
                                    text: '2.5k',
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    textAlign: TextAlign.center,
                                    fontFamily: 'SFProRounded',
                                  ),
                                  2.pw,
                                  Icon(
                                    Icons.remove_red_eye_outlined,
                                    size: 14.sp,
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  image: DecorationImage(
                                    image: AssetImage(interestImages[index]),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
