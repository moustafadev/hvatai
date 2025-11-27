part of '../home.dart';

class AwardsClubScreen extends StatelessWidget {
  const AwardsClubScreen({
    super.key,
    this.initialUser,
    this.initialIsSubscribed = false,
    this.companyCubit,
  });

  final UserDataModel? initialUser;
  final bool initialIsSubscribed;
  final CompanyNameCubit? companyCubit;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<AwardsClubCubit>()
        ..setInitialData(
          user: initialUser,
          isSubscribed: initialIsSubscribed,
        ),
      child: _AwardsClubView(
        companyCubit: companyCubit,
      ),
    );
  }
}

class _AwardsClubView extends StatelessWidget {
  const _AwardsClubView({
    this.companyCubit,
  });

  final CompanyNameCubit? companyCubit;

  List<String> get rewardImages => const <String>[
        Assets.assetsImagesBronzeAward,
        Assets.assetsImagesSilverAward,
        Assets.assetsImagesGoldAward,
        Assets.assetsImagesDiamondAward,
        Assets.assetsImagesPlatinumAward,
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBackground,
      body: WillPopScope(
        onWillPop: () async {
          context.pop(companyCubit?.state.isSubscribed ?? false);
          return true;
        },
        child: BlocConsumer<AwardsClubCubit, AwardsClubState>(
          listenWhen: (previous, current) =>
              previous.isSubscribed != current.isSubscribed,
          listener: (_, state) {
            companyCubit?.syncSubscriptionStatus(state.isSubscribed);
          },
          builder: (context, state) {
            final cubit = context.read<AwardsClubCubit>();
            final user = state.company;
            final companyName =
                (user?.name ?? '').isNotEmpty ? user!.name! : 'companyName'.tr();
            final description = 'subscribeAwardsDescription'
                .tr(namedArgs: {'company': companyName});
            final avatar = user?.image;
         
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
                                      maxWidth: MediaQuery.of(context).size.width,
                                    ),
                                    context: context,
                                    isScrollControlled: true,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20.r),
                                      ),
                                    ),
                                    backgroundColor: Colors.white,
                                    builder: (context) => AwardsClubBottomSheet(
                                      cubit: cubit,
                                    ),
                                  );
                                },
                                child: _CompanyAvatar(
                                  size: 48.r,
                                  imageUrl: avatar,
                                ),
                              ),
                              4.ph,
                              CustomText(
                                text: companyName,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w800,
                              ),
                              12.ph,
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child: CustomText(
                                  text: description,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              12.ph,
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
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: AppColors.blackColorIcon,
                          ),
                          onPressed: () =>
                              Navigator.of(context).pop(state.isSubscribed),
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
                          vertical: 12.h,
                          horizontal: 10.w,
                        ),
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
          },
        ),
      ),
    );
  }
}

class _CompanyAvatar extends StatelessWidget {
  const _CompanyAvatar({
    required this.size,
    this.imageUrl,
  });

  final double size;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
   
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: ClipOval(
        child: CustomImage(
          imageSource: imageUrl ?? '',
          width: size,
          height: size,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
