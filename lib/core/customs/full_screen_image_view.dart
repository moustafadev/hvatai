part of 'customs.dart';

class FullScreenImageView extends StatelessWidget {
  final String imageUrl;
  final String? heroTag;

  const FullScreenImageView({
    super.key,
    required this.imageUrl,
    this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: Center(
          child: InteractiveViewer(
            minScale: 0.8,
            maxScale: 4.0,
            panEnabled: true,
            child: heroTag != null
                ? Hero(
                    tag: heroTag!,
                    child: CustomImage(
                      imageSource: imageUrl,
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.contain,
                    ),
                  )
                : CustomImage(
                    imageSource: imageUrl,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.contain,
                  ),
          ),
        ),
      ),
    );
  }
}