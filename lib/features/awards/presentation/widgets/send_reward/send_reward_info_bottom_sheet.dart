part of '../../awards.dart';

class SendRewardInfoBottomSheet extends StatelessWidget {
  final int userId;
  const SendRewardInfoBottomSheet({
    super.key,
    required this.userId,
  });

  static const List<_RewardInfoItem> _items = [
    _RewardInfoItem(
      iconPath: Assets.assetsIconsAmount,
      textKey: 'rewardInfoPoint1',
    ),
    _RewardInfoItem(
      iconPath: Assets.assetsIconsHeart2,
      textKey: 'rewardInfoPoint2',
    ),
    _RewardInfoItem(
      iconPath: Assets.assetsIconsMessage2,
      textKey: 'rewardInfoPoint3',
    ),
    _RewardInfoItem(
      iconPath: Assets.assetsIconsDollar2,
      textKey: 'rewardInfoPoint4',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          8.ph,
          _RewardInfoBottomSheetHandle(),
          CustomText(
            text: 'rewardInfoTitle'.tr(),
            fontSize: 18.sp,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w800,
          ),
          20.ph,
          ..._items.map(
            (item) => Padding(
              padding: EdgeInsets.only(bottom: 16.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.r),
                    child: SvgPicture.asset(
                      item.iconPath,
                    ),
                  ),
                  12.pw,
                  Expanded(
                    child: CustomText(
                      text: item.textKey.tr(),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
          ),
          8.ph,
          CustomButton(
            title: 'sendReward'.tr(),
            onPressed: () {
              context.push(AppRoutes.sendReward, extra: {'userId': userId});
            },
            color: AppColors.primaryColor,
            textColor: AppColors.white,
            fontSize: 16.sp,
            fontWeight: FontWeight.w800,
          ),
          10.ph,
        ],
      ),
    );
  }
}

class _RewardInfoBottomSheetHandle extends StatelessWidget {
  const _RewardInfoBottomSheetHandle();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 44.w,
        height: 4.h,
        margin: EdgeInsets.only(bottom: 12.h),
        decoration: BoxDecoration(
          color: AppColors.greyButton,
          borderRadius: BorderRadius.circular(100.r),
        ),
      ),
    );
  }
}

class _RewardInfoItem {
  const _RewardInfoItem({
    required this.iconPath,
    required this.textKey,
  });

  final String iconPath;
  final String textKey;
}
