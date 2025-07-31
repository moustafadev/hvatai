part of '../profile.dart';

class BuildProfileImage extends StatelessWidget {
  final String? image;

  const BuildProfileImage({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    double size = 80.r;

    if (image == null || image!.isEmpty) {
      return CircleAvatar(
        radius: size / 2,
        backgroundColor: AppColors.gray,
        child: const Icon(Icons.person, size: 40),
      );
    }

    if (image!.startsWith('/')) {
      return ClipOval(
        child: Image.file(
          File(image!),
          width: size,
          height: size,
          fit: BoxFit.cover,
        ),
      );
    }

    if (image!.startsWith('assets/')) {
      return ClipOval(
        child: Image.asset(
          image!,
          width: size,
          height: size,
          fit: BoxFit.cover,
        ),
      );
    }

    final fullUrl =
        image!.startsWith('http') ? image! : 'https://khvatai.ru/$image';

    return ClipOval(
      child: CachedNetworkImage(
        imageUrl: fullUrl,
        width: size,
        height: size,
        fit: BoxFit.cover,
        placeholder: (context, url) => CircleAvatar(
          radius: size / 2,
          backgroundColor: AppColors.gray,
        ),
        errorWidget: (context, url, error) => CircleAvatar(
          radius: size / 2,
          backgroundColor: AppColors.gray,
          child: const Icon(Icons.error),
        ),
      ),
    );
  }
}
