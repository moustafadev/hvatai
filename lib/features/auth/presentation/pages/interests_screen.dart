part of '../auth.dart';

class InterestsScreen extends StatelessWidget {
  final UserRegistrationData userData;
  const InterestsScreen({super.key, required this.userData});

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
    return BlocProvider(
      create: (_) => locator<InterestsCubit>()..initVariable(userData),
      child: Scaffold(
        appBar: AppBar(
          title: CustomText(
            text: 'back'.tr(),
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            fontFamily: 'SFProRounded',
          ),
        ),
        body: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: BlocBuilder<InterestsCubit, InterestsState>(
              builder: (context, state) {
                final cubit = context.read<InterestsCubit>();

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'interestsTitle'.tr(),
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'SFProRounded',
                    ),
                    SizedBox(height: 8.h),
                    CustomText(
                      text: 'interestsSubtitle'.tr(),
                      fontSize: 16.sp,
                      color: Colors.grey,
                      fontFamily: 'MontserratAlternates',
                    ),
                    SizedBox(height: 20.h),
                    Expanded(
                      child: ResponsiveGridListBuilder(
                        minItemWidth: 1,
                        minItemsPerRow: 3,
                        maxItemsPerRow: 3,
                        horizontalGridSpacing: 12.h,
                        verticalGridSpacing: 12.h,
                        builder: (context, items) => ListView(
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.zero,
                          children: items,
                        ),
                        gridItems:
                            List.generate(interestImages.length, (index) {
                          final isSelected =
                              state.selectedIndices.contains(index);

                          return GestureDetector(
                            onTap: () => cubit.toggleInterest(
                                index, interestKeys[index].tr()),
                            child: Container(
                              height: 120.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 4,
                                    offset: Offset(2, 2),
                                  ),
                                ],
                                border: isSelected
                                    ? Border.all(
                                        width: 0.1, color: Colors.transparent)
                                    : Border.all(color: Colors.white, width: 2),
                                gradient: isSelected
                                    ? LinearGradient(
                                        colors: [
                                          AppColors.blueLite,
                                          AppColors.purpleLite,
                                          AppColors.deepPurple
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      )
                                    : null,
                              ),
                              child: Padding(
                                padding: isSelected
                                    ? EdgeInsets.all(1.5.r)
                                    : EdgeInsets.zero,
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
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          textAlign: TextAlign.center,
                                          fontFamily: 'SFProRounded',
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.r),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  interestImages[index]),
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
                          );
                        }),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    CustomGradientButton(
                      text: state.isLoading
                          ? "registering".tr()
                          : "continue".tr(),
                      onPressed: state.isLoading
                          ? null
                          : () {
                              final updatedUserData = userData.copyWith(
                                interests: context
                                    .read<InterestsCubit>()
                                    .state
                                    .selectedInterests,
                              );

                              context.push(
                                AppRoutes.interestsDetail,
                                extra: updatedUserData,
                              );
                            },
                    ),
                    SizedBox(height: 20.h),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
