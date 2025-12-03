part of '../../awards.dart';

class _AwardsClubHeaderContent extends StatelessWidget {
  const _AwardsClubHeaderContent({
    required this.companyName,
    required this.description,
    required this.avatar,
    required this.onAvatarTap,
  });

  final String companyName;
  final String description;
  final String? avatar;
  final VoidCallback onAvatarTap;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              onTap: onAvatarTap,
              child: CompanyAvatarWidget(
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
            _AwardsClubSeasonBadge(),
            8.ph,
            Padding(
              padding: EdgeInsets.only(bottom: 24.h),
              child: CustomText(
                text: 'Rewards and progress reset at the start of each season.',
                fontWeight: FontWeight.w600,
                fontSize: 10.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AwardsClubSeasonBadge extends StatelessWidget {
  const _AwardsClubSeasonBadge();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
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
    );
  }
}
