part of '../../awards.dart';

class _AwardsClubBottomSheetHeader extends StatelessWidget {
  const _AwardsClubBottomSheetHeader({
    required this.user,
    required this.isSubscribed,
    required this.isToggleLoading,
    required this.onToggleSubscription,
  });

  final UserDataModel? user;
  final bool isSubscribed;
  final bool isToggleLoading;
  final VoidCallback onToggleSubscription;

  @override
  Widget build(BuildContext context) {
    final avatar = user?.image;
    final name =
        (user?.name ?? '').isNotEmpty ? user!.name! : 'awardsClub'.tr();
    final rating = user?.personalAvg ?? 0;
    final buttonTitle = isSubscribed ? 'unsubscribe'.tr() : 'subscribe'.tr();
    final buttonColor = isSubscribed ? AppColors.white : AppColors.primaryColor;
    final textColor = isSubscribed ? AppColors.primaryColor : AppColors.white;
    final borderColor = isSubscribed ? AppColors.primaryColor : null;

    return ListTile(
        contentPadding: EdgeInsets.zero,
        leading: CompanyAvatarWidget(
          size: 40.r,
          imageUrl: avatar,
        ),
        title: CustomText(
          text: name,
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
            4.pw,
            CustomText(
              text: rating.toStringAsFixed(1),
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
        trailing: SizedBox(
          width: MediaQuery.of(context).size.width / 3.5,
          child: CustomButton(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            radius: 10.r,
            color: buttonColor,
            title: buttonTitle,
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
            textColor: textColor,
            colorBorderSide: borderColor,
            isLoading: isToggleLoading,
            onPressed: user == null ? null : onToggleSubscription,
          ),
        ));
  }
}

class _AwardsClubBottomSheetActions extends StatelessWidget {
  const _AwardsClubBottomSheetActions({
    required this.user,
    required this.cubit,
  });

  final UserDataModel? user;
  final AwardsClubCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomRowAwardsGift(
            title: 'sendReward'.tr(),
            imagePath: Assets.assetsIconsIcBoost,
            onTap: () => context.push(AppRoutes.sendReward, extra: cubit),
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
            onTap: () => showChatBottomSheet(context, user),
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
    );
  }
}
