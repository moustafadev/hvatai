part of '../search.dart';

class FourContainerCompanyName extends StatelessWidget {
  const FourContainerCompanyName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomItemFourContainer(
          text: 'goods'.tr(),
          assetPath: Assets.assetsIconsUsersGroupRoundedIcon,
          onTap: () => context.push(AppRoutes.productsCompany),
        ),
        8.pw,
        CustomItemFourContainer(
          text: 'streams'.tr(),
          assetPath: Assets.assetsImagesStreamIcon,
        ),
        8.pw,
        CustomItemFourContainer(
          text: 'clips'.tr(),
          assetPath: Assets.assetsImagesOrderIcon,
        ),
        8.pw,
        CustomItemFourContainer(
          text: 'reviews'.tr(),
          assetPath: Assets.assetsIconsStar2,
        ),
      ],
    );
  }
}
