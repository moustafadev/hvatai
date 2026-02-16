part of 'customs.dart';

class CustomShowMediaProduct extends StatelessWidget {
  final MediaItem mediaItem;
  final int index;
  final VoidCallback onTap;

  const CustomShowMediaProduct({
    super.key,
    required this.mediaItem,
    required this.index,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Widget mediaWidget;

    if (mediaItem.type == MediaType.video) {
      // For videos, show thumbnail with play icon
      mediaWidget = Stack(
        fit: StackFit.expand,
        children: [
          if (mediaItem.path.startsWith('http') ||
              mediaItem.path.startsWith('https'))
            Image.network(
              mediaItem.path,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
              errorBuilder: (context, error, stackTrace) => Container(
                color: AppColors.gray,
                child:
                    const Icon(Icons.videocam, size: 50, color: AppColors.grey),
              ),
            )
          else
            Image.file(
              File(mediaItem.path),
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
              errorBuilder: (context, error, stackTrace) => Container(
                color: AppColors.gray,
                child:
                    const Icon(Icons.videocam, size: 50, color: AppColors.grey),
              ),
            ),
          // Play icon overlay
          Container(
            color: Colors.black.withValues(alpha: 0.3),
            child: const Center(
              child: Icon(
                Icons.play_circle_filled,
                size: 50,
                color: Colors.white,
              ),
            ),
          ),
        ],
      );
    } else {
      // For images
      if (mediaItem.path.startsWith('http') ||
          mediaItem.path.startsWith('https')) {
        mediaWidget = Image.network(
          mediaItem.path,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        );
      } else {
        mediaWidget = Image.file(
          File(mediaItem.path),
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        );
      }
    }

    return DottedBorder(
      padding: const EdgeInsets.all(1),
      borderType: BorderType.RRect,
      radius: const Radius.circular(12),
      dashPattern: const [6, 3],
      color: AppColors.grey,
      strokeWidth: 1.5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(11),
        child: InkWell(
          onTap: onTap,
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: mediaWidget,
          ),
        ),
      ),
    );
  }
}
