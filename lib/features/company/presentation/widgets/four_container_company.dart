part of '../company.dart';

class FourContainerCompany extends StatelessWidget {
  const FourContainerCompany({
    super.key,
    this.userId,
    this.userName,
  });

  final int? userId;
  final String? userName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomItemFourContainer(
          text: 'goods'.tr(),
          assetPath: Assets.assetsIconsUsersGroupRoundedIcon,
          onTap: userId == null
              ? null
              : () => context.push(
                    AppRoutes.productsCompany,
                    extra: {
                      'userId': userId,
                      'userName': userName,
                    },
                  ),
        ),
        8.pw,
        CustomItemFourContainer(
          text: 'streams'.tr(),
          assetPath: Assets.assetsImagesStreamIcon,
          onTap: userId == null
              ? null
              : () => context.push(
                    AppRoutes.clipsCompany,
                    extra: {'userId': userId},
                  ),
        ),
        8.pw,
        CustomItemFourContainer(
          text: 'clips'.tr(),
          assetPath: Assets.assetsImagesOrderIcon,
          onTap: userId == null
              ? null
              : () => context.push(
                    AppRoutes.clipsCompany,
                    extra: {'userId': userId},
                  ),
        ),
        8.pw,
        CustomItemFourContainer(
          text: 'reviews'.tr(),
          assetPath: Assets.assetsIconsStar2,
          onTap: () => context.push(AppRoutes.reviewCompany),
        ),
      ],
    );
  }
}
