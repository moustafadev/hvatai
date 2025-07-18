part of '../profile.dart';

class FourContainerTradeProfileDetail extends StatelessWidget {
  const FourContainerTradeProfileDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomItemFourContainer(
          text: 'goods'.tr(),
          assetPath: Assets.assetsIconsUsersGroupRoundedIcon,
          onTap: () => context.push(AppRoutes.myGoods),
        ),
        8.pw,
        CustomItemFourContainer(
          text: 'streams'.tr(),
          assetPath: Assets.assetsImagesStreamIcon,
        ),
        8.pw,
        CustomItemFourContainer(
          text: 'wallet'.tr(),
          assetPath: Assets.assetsIconsWallet,
        ),
        8.pw,
        CustomItemFourContainer(
          text: 'orders'.tr(),
          assetPath: Assets.assetsImagesOrderIcon,
        ),
      ],
    );
  }
}
