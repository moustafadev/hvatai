part of '../stream.dart';

class RightSideIcons extends StatelessWidget {
  const RightSideIcons({
    super.key,
    this.onShopTap,
  });

  final Future<void> Function()? onShopTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RightIcon(
            icon: Assets.assetsImagesShare, label: 'Share', counter: '10'),
        const SizedBox(height: 24),
        RightIcon(icon: Assets.assetsIconsWallet, label: 'Кошелёк'),
        const SizedBox(height: 24),
        RightIcon(
          onTap: () async {
            if (onShopTap != null) {
              await onShopTap!();
              return;
            }

            // Get streamId from BroadcasterStreamCubit
            final broadcasterCubit = context.read<BroadcasterStreamCubit>();
            final streamId = broadcasterCubit.state.stream.id;
            if (streamId == null) return;
            final categories = broadcasterCubit.state.stream.categories
                    ?.map((c) => c.id)
                    .whereType<int>()
                    .toList() ??
                [];

            final selectedProduct =
                await showModalBottomSheet<StreamProductModel>(
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              builder: (ctx) => LiveListingsBottomSheet(
                streamId: streamId,
                categoryIds: categories,
                currentStreamProductId:
                    broadcasterCubit.state.currentStreamProductId,
              ),
            );

            if (selectedProduct != null) {
              broadcasterCubit
                  .setActiveStreamProduct(selectedProduct);
            }
          },
          icon: Assets.assetsIconsShop,
          label: 'Магазин',
          size: 38,
          counter: '159',
        ),
      ],
    );
  }
}
