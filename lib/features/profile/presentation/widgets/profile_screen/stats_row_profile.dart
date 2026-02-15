part of '../../profile.dart';

class StatsRowProfile extends StatelessWidget {
  const StatsRowProfile({
    super.key,
    required this.user,
  });

  final UserRegistrationData user;

  @override
  Widget build(BuildContext context) {
    final rating = (user.personalRating ?? user.businessRating ?? 0).toDouble();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          StatTileProfile(
            title: 'rating'.tr(),
            asset: Assets.assetsIconsStar,
            value: rating.toStringAsFixed(1),
          ),
          StatTileProfile(
            title: 'orders'.tr(),
            asset: Assets.assetsImagesOrderIcon,
            onTap: () {
              context.push(AppRoutes.myOrders);
            },
          ),
          StatTileProfile(
            title: 'wallet'.tr(),
            asset: Assets.assetsImagesWalletIcon,
            onTap: () {
              context
                  .push(AppRoutes.wallet, extra: {'walletId': user.walletId});
            },
          ),
        ],
      ),
    );
  }
}

class StatTileProfile extends StatelessWidget {
  const StatTileProfile({
    super.key,
    required this.title,
    required this.asset,
    this.value,
    this.onTap,
  });

  final String title;
  final String asset;
  final String? value;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final content = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomText(
          text: title,
          fontSize: 11.sp,
          fontWeight: FontWeight.w700,
          color: AppColors.blackColorIcon,
        ),
        8.ph,
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              asset,
              width: 24,
              height: 24,
              color: value != null
                  ? AppColors.goldenColor
                  : AppColors.blackColorIcon,
            ),
            6.pw,
            CustomText(
              text: value ?? '',
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.blackColorIcon,
            ),
          ],
        ),
      ],
    );

    if (onTap != null) {
      return GestureDetector(
        onTap: onTap,
        child: content,
      );
    }

    return content;
  }
}
