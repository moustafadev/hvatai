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
    bool isNetworkImage = imageSource.isNetworkImage;
    bool isAssetImage = imageSource.isAssetImage;

    if (imageSource.isEmpty) {
      return _buildPlaceholder();
    }

    if (isNetworkImage) {
      return CachedNetworkImage(
        imageUrl: imageSource,
        width: width,
        height: height,
        fit: fit,
        errorWidget: (context, url, error) => _buildPlaceholder(),
      );
    } else if (isAssetImage) {
      return Image.asset(
        imageSource,
        width: width,
        height: height,
        fit: fit,
        errorBuilder: (context, error, stackTrace) => _buildPlaceholder(),
      );
    } else {
      // If path starts with /, it's likely a server path, normalize it
      String normalizedPath = imageSource;
      if (imageSource.startsWith('/')) {
        normalizedPath = imageSource.substring(1);
      }

      // For local files, first check if the file exists
      final file = File(normalizedPath);
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
          final networkUrl =
              Uri.parse('${ServerConfig.domenStorage}$normalizedPath');
          return CachedNetworkImage(
            imageUrl: networkUrl.toString(),
            width: width,
            height: height,
            fit: fit,
            placeholder: (context, url) => _buildPlaceholder(), 
            errorWidget: (context, url, error) => _buildPlaceholder(),
          );
        } catch (e) {
          return _buildPlaceholder();
        }
      }
    }
  }

  Widget _buildPlaceholder() {
    return Image.asset(
      Assets.assetsImagesPlaceholder,
      width: width,
      height: height,
      fit: fit,
    );
  }
}
