part of '../home.dart';

class AwardsClubBottomSheet extends StatelessWidget {
  const AwardsClubBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AwardsClubCubit, AwardsClubState>(
        builder: (context, state) {
      final cubit = context.read<AwardsClubCubit>();
      return SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 40.w,
                height: 4.h,
                margin: EdgeInsets.only(bottom: 16.h),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Image.asset(
                Assets.assetsIconsAppleg,
                height: 40.h,
                width: 40.w,
                fit: BoxFit.cover,
              ),
              title: CustomText(
                text: 'Awards Club',
                fontSize: 14.sp,
                fontWeight: FontWeight.w800,
              ),
              subtitle: Row(
                children: [
                  Image.asset(
                    Assets.assetsIconsStar,
                    color: AppColors.goldenColor,
                    height: 16.h,
                    width: 16.w,
                  ),
                  CustomText(
                    text: '4.7',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              trailing: SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                child: CustomButton(
                  padding: EdgeInsets.zero,
                  radius: 10.r,
                  color: AppColors.primaryColor,
                  title: 'subscribe'.tr(),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  textColor: AppColors.white,
                  onPressed: () {},
                ),
              ),
            ),
            16.ph,
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomRowAwardsGift(
                    title: 'sendReward'.tr(),
                    imagePath: Assets.assetsIconsIcBoost,
                    onTap: () =>
                        context.push(AppRoutes.sendReward, extra: cubit),
                  ),
                  12.ph,
                  CustomRowAwardsGift(
                    title: 'awardsClub'.tr(),
                    imagePath: Assets.assetsIconsCrownIcon,
                    onTap: () {},
                  ),
                  12.ph,
                  CustomRowAwardsGift(
                    title: 'write'.tr(),
                    imagePath: Assets.assetsIconsMessage,
                    onTap: () {},
                  ),
                  12.ph,
                  CustomRowAwardsGift(
                    title: 'awardsDanger'.tr(),
                    imagePath: Assets.assetsIconsDangerTriangle,
                    color: AppColors.red,
                    onTap: () {},
                  ),
                  16.ph,
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
