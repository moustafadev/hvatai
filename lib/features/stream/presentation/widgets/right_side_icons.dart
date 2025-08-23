part of '../stream.dart';

class RightSideIcons extends StatelessWidget {
  const RightSideIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RightIcon(
            icon: Assets.assetsImagesShare,
            label: 'Share',
            counter: '10'),
        const SizedBox(height: 24),
        RightIcon(icon: Assets.assetsIconsWallet, label: 'Кошелёк'),
        const SizedBox(height: 24),
        RightIcon(
            icon: Assets.assetsIconsShop,
            label: 'Магазин',
            size: 38,
            counter: '159'),
      ],
    );
  }
}
