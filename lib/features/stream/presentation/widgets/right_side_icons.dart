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
            icon: Assets.assetsImagesShare, label: 'Share', counter: '10'),
        const SizedBox(height: 24),
        RightIcon(icon: Assets.assetsIconsWallet, label: 'Кошелёк'),
        const SizedBox(height: 24),
        RightIcon(
          onTap: () {
            // Get streamId from BroadcasterStreamCubit
            final streamId = context.read<BroadcasterStreamCubit>().state.stream.id;
            if (streamId == null) return;
            
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              builder: (ctx) => LiveListingsBottomSheet(streamId: streamId),
            );
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
