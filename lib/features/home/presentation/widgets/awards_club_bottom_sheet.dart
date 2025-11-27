part of '../home.dart';

class AwardsClubBottomSheet extends StatelessWidget {
  const AwardsClubBottomSheet({
    super.key,
    required this.cubit,
  });

  final AwardsClubCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cubit,
      child: const _AwardsClubBottomSheetBody(),
    );
  }
}

class _AwardsClubBottomSheetBody extends StatelessWidget {
  const _AwardsClubBottomSheetBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AwardsClubCubit, AwardsClubState>(
      builder: (context, state) {
        final cubit = context.read<AwardsClubCubit>();
        final user = state.company;
        final avatar = user?.image;
        final name =
            (user?.name ?? '').isNotEmpty ? user!.name! : 'awardsClub'.tr();
        final rating = user?.personalAvg ?? 0;
        final isSubscribed = state.isSubscribed;
        final isToggleLoading = state.isToggleLoading;
        final buttonTitle =
            isSubscribed ? 'unsubscribe'.tr() : 'subscribe'.tr();
        final buttonColor =
            isSubscribed ? AppColors.white : AppColors.primaryColor;
        final textColor =
            isSubscribed ? AppColors.primaryColor : AppColors.white;
        final borderColor = isSubscribed ? AppColors.primaryColor : null;

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
                leading: _CompanyAvatar(
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
                    onPressed:
                        user == null ? null : () => cubit.toggleSubscription(),
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
      },
    );
  }
}
