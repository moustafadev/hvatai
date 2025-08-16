part of 'customs.dart';

extension ImageSourceExtensions on String {
  bool get isNetworkImage {
    return startsWith('http://') || startsWith('https://');
  }

  bool get isAssetImage {
    return startsWith('assets/');
  }
}

class CustomImage extends StatelessWidget {
  final String imageSource;
  final double? width;
  final double? height;
  final BoxFit fit;

  const CustomImage({
    super.key,
    required this.imageSource,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    bool _isNetworkImage = imageSource.isNetworkImage;
    bool _isAssetImage = imageSource.isAssetImage;

    if (imageSource.isEmpty) {
      return _buildPlaceholder();
    }

    if (_isNetworkImage) {
      return CachedNetworkImage(
        imageUrl: imageSource,
        width: width,
        height: height,
        fit: fit,
        errorWidget: (context, url, error) => _buildPlaceholder(),
      );
    } else if (_isAssetImage) {
      return Image.asset(
        imageSource,
        width: width,
        height: height,
        fit: fit,
        errorBuilder: (context, error, stackTrace) => _buildPlaceholder(),
      );
    } else {
      // For local files, first check if the file exists
      final file = File(imageSource);
      if (file.existsSync()) {
        return Image.file(
          file,
          width: width,
          height: height,
          fit: fit,
          errorBuilder: (context, error, stackTrace) => _buildPlaceholder(),
        );
      } else {
        // If file doesn't exist, try to construct a network URL
        try {
          final networkUrl = Uri.parse('https://khvatai.ru/$imageSource');
          return CachedNetworkImage(
            imageUrl: networkUrl.toString(),
            width: width,
            height: height,
            fit: fit,
            errorWidget: (context, url, error) => _buildPlaceholder(),
          );
        } catch (e) {
          return _buildPlaceholder();
        }
      }
    }
  }

  Widget _buildPlaceholder() {
    return Container(
      width: width,
      height: height,
      color: AppColors.gray,
      child: Center(
        child: Icon(
          Icons.image,
          size: width! / 2,
          color: AppColors.grey,
        ),
      ),
    );
  }
}
