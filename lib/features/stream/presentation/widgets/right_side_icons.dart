part of '../stream.dart';

class RightSideIcons extends StatelessWidget {
  const RightSideIcons({
    super.key,
    this.onShopTap,
    this.onClipTap,
    this.userTime,
  });

  final Future<void> Function()? onShopTap;
  final Future<void> Function(String name)? onClipTap;
  final int? userTime;

  String _formatTime(int seconds) {
    final minutes = seconds ~/ 60;
    final secs = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RightIcon(
          icon: Assets.assetsImagesFilm,
          label: 'Клип',
          counter:
              userTime != null && userTime! > 0 ? _formatTime(userTime!) : null,
          onTap: () async {
            if (onClipTap == null) return;

            if (userTime == null || userTime! <= 0) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                      'Пожалуйста, подождите, пока стрим инициализируется'),
                  backgroundColor: Colors.red,
                ),
              );
              return;
            }

            // Show dialog to enter clip name
            final nameController = TextEditingController();
            final result = await showDialog<String>(
              context: context,
              builder: (dialogContext) => AlertDialog(
                title: const Text('Создать клип'),
                content: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    hintText: 'Название клипа',
                    border: OutlineInputBorder(),
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(dialogContext).pop(),
                    child: const Text('Отмена'),
                  ),
                  TextButton(
                    onPressed: () {
                      if (nameController.text.trim().isNotEmpty) {
                        Navigator.of(dialogContext)
                            .pop(nameController.text.trim());
                      }
                    },
                    child: const Text('Создать'),
                  ),
                ],
              ),
            );

            if (result != null && result.isNotEmpty) {
              await onClipTap!(result);
            }
          },
        ),
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
              broadcasterCubit.setActiveStreamProduct(selectedProduct);
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
