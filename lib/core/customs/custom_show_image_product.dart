part of 'customs.dart';

class CustomShowImageProduct extends StatelessWidget {
  final String image;
  final int index;
  final VoidCallback onTapEdit;
  final VoidCallback onTapDelete;

  const CustomShowImageProduct({
    super.key,
    required this.image,
    required this.index,
    required this.onTapEdit,
    required this.onTapDelete,
  });

  @override
  Widget build(BuildContext context) {
    Widget imageWidget;

    if (image.startsWith('http') || image.startsWith('https')) {
      imageWidget = Image.network(
        image,
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      );
    } else {
      imageWidget = Image.file(
        File(image),
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      );
    }

    return AspectRatio(
      aspectRatio: 1.8,
      child: DottedBorder(
        padding: const EdgeInsets.all(1),
        borderType: BorderType.RRect,
        radius: const Radius.circular(12),
        dashPattern: const [6, 3],
        color: AppColors.grey,
        strokeWidth: 1.5,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(11),
          child: Stack(
            fit: StackFit.expand,
            children: [
              imageWidget,
              Positioned(
                top: 4,
                right: 4,
                child: Row(
                  children: [
                    InkWell(
                      onTap: onTapEdit,
                      borderRadius: BorderRadius.circular(4),
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Icon(Icons.edit,
                            color: Colors.white, size: 18),
                      ),
                    ),
                    const SizedBox(width: 4),
                    InkWell(
                      onTap: onTapDelete,
                      borderRadius: BorderRadius.circular(4),
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Icon(Icons.delete_sharp,
                            color: Colors.white, size: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
