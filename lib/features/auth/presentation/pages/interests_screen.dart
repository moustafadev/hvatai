part of '../auth.dart';

class InterestsScreen extends StatelessWidget {
  final UserRegistrationData data;
  const InterestsScreen({super.key, required this.data});

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
      create: (_) => locator<InterestsCubit>()..initVariable(data),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios,
                color: AppColors.blackColorIcon),
            onPressed: () => GoRouter.of(context).pop(),
          ),
        ),
        body: SafeArea(
          bottom: false,
          child: BlocBuilder<InterestsCubit, InterestsState>(
            builder: (context, state) {
              final cubit = context.read<InterestsCubit>();

              return Stack(
                children: [
                  SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        20.ph,
                        CustomText(
                          text: 'interestsTitle'.tr(),
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w800,
                        ),
                        4.ph,
                        CustomText(
                          text: 'interestsSubtitle'.tr(),
                          fontSize: 16.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                        20.ph,
                        ResponsiveGridListBuilder(
                          minItemWidth: 1,
                          minItemsPerRow: 3,
                          maxItemsPerRow: 3,
                          horizontalGridSpacing: 12.h,
                          verticalGridSpacing: 12.h,
                          builder: (context, items) => Column(
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
                                  color: isSelected
                                      ? AppColors.primaryColor
                                      : null,
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
                                      : Border.all(
                                          color: Colors.white, width: 2),
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
                      ],
                    ),
                  ),
                  // الزر الثابت في الأسفل
                  Positioned(
                    left: 16,
                    right: 16,
                    bottom: 20,
                    child: CustomGradientButton(
                      isLoading: state.isLoading,
                      isDisabled: !(state.selectedInterests.isNotEmpty),
                      text: "continue".tr(),
                      onPressed: () {
                        cubit.submitInterests(context);
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
