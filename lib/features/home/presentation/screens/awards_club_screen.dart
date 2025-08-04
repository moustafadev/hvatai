part of '../home.dart';

class AwardsClubScreen extends StatelessWidget {
  AwardsClubScreen({super.key});

  final List<String> rewardImages = [
    Assets.assetsImagesBronzeAward,
    Assets.assetsImagesSilverAward,
    Assets.assetsImagesGoldAward,
    Assets.assetsImagesDiamondAward,
    Assets.assetsImagesPlatinumAward,
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<AwardsClubCubit>(),
      child: Scaffold(
        backgroundColor: AppColors.lightGreyBackground,
        body: BlocBuilder<AwardsClubCubit, AwardsClubState>(
            builder: (context, state) {
          final cubit = context.read<AwardsClubCubit>();
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: AppColors.primaryPink,
                        image: DecorationImage(
                          image: AssetImage(Assets.assetsImagesAwardsGift),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 60.h),
                        child: Column(
                          children: [
                            CustomText(
                              text: 'awardsClub'.tr(),
                              fontSize: 28.sp,
                              fontWeight: FontWeight.w800,
                            ),
                            12.ph,
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                    constraints: BoxConstraints(
                                      maxWidth:
                                          MediaQuery.of(context).size.width,
                                    ),
                                    context: context,
                                    isScrollControlled: true,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20.r)),
                                    ),
                                    backgroundColor: Colors.white,
                                    builder: (context) => BlocProvider.value(
                                          value: cubit,
                                          child: const AwardsClubBottomSheet(),
                                        ));
                              },
                              child: Image.asset(
                                Assets.assetsIconsAppleg,
                                width: 72.w,
                                height: 72.h,
                                fit: BoxFit.cover,
                              ),
                            ),
                            4.ph,
                            CustomText(
                              text: 'Company_Name',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w800,
                            ),
                            12.ph,
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: CustomText(
                                text:
                                    'Subscribe, watch and shop to earn rewards from company_name',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            8.ph,
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 6.w, vertical: 2.h),
                              decoration: BoxDecoration(
                                color: AppColors.purple,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: CustomText(
                                text: 'Season 2 ends on March 3rd',
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.white,
                              ),
                            ),
                            8.ph,
                            Padding(
                              padding: EdgeInsets.only(bottom: 24.h),
                              child: CustomText(
                                text:
                                    'Rewards and progress reset at the start of each season.',
                                fontWeight: FontWeight.w600,
                                fontSize: 10.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.blackColorIcon,
                        ),
                        onPressed: () {
                          context.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 12.h, horizontal: 10.w),
                      child: CustomAwardsCard(
                        imagePath: rewardImages[index],
                        level: 'Level ${index + 1}'.tr(),
                        title: [
                          'bronze'.tr(),
                          'silver'.tr(),
                          'gold'.tr(),
                          'diamond'.tr(),
                          'platinum'.tr(),
                        ][index],
                        features: [
                          "-${(index + 1) * 3}% on prices in the store".tr(),
                          "Cashback up to ${(index + 1) * 5}%".tr(),
                        ],
                      ),
                    );
                  },
                  childCount: rewardImages.length,
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
