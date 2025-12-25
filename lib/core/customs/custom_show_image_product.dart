part of 'customs.dart';

class CustomShowImageProduct extends StatelessWidget {
  final String image;
  final int index;
  final VoidCallback onTap;

  const CustomShowImageProduct({
    super.key,
    required this.image,
    required this.index,
    required this.onTap,
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
            child: imageWidget,
          ),
        ),
      ),
    );
  }
}
