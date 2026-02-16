part of '../review.dart';

class PhotoUploadWidget extends StatelessWidget {
  const PhotoUploadWidget({
    super.key,
    required this.images,
    required this.onAddImage,
    required this.onRemoveImage,
  });

  final List<String> images;
  final VoidCallback onAddImage;
  final ValueChanged<int> onRemoveImage;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.w,
      runSpacing: 8.h,
      children: [
        // Add photo button
        if (images.length < 8)
          GestureDetector(
            onTap: onAddImage,
            child: Container(
              width: 100.w,
              height: 100.h,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: AppColors.graniteGray.withValues(alpha: 0.3),
                  width: 1,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.camera_alt,
                    color: AppColors.graniteGray,
                    size: 24.sp,
                  ),
                  8.ph,
                  CustomText(
                    text: 'uploadPhoto'.tr(),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.graniteGray,
                  ),
                  4.ph,
                  CustomText(
                    text: 'optional'.tr(),
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.graniteGray,
                  ),
                ],
              ),
            ),
          ),
        // Image previews
        ...images.asMap().entries.map((entry) {
          final index = entry.key;
          final imagePath = entry.value;
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image.file(
                  File(imagePath),
                  width: 100.w,
                  height: 100.h,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 4.h,
                right: 4.w,
                child: GestureDetector(
                  onTap: () => onRemoveImage(index),
                  child: Container(
                    padding: EdgeInsets.all(4.r),
                    decoration: BoxDecoration(
                      color: AppColors.blackDark.withValues(alpha: 0.7),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.close,
                      color: AppColors.white,
                      size: 16.sp,
                    ),
                  ),
                ),
              ),
            ],
          );
        }),
      ],
    );
  }
}
