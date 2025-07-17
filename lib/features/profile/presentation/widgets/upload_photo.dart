part of '../profile.dart';

class UploadPhoto extends StatelessWidget {
  final List<File> selectedImages;
  final VoidCallback onPickImage;

  const UploadPhoto({
    super.key,
    required this.selectedImages,
    required this.onPickImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        selectedImages.isEmpty
            ? GestureDetector(
                onTap: onPickImage,
                child: DottedBorder(
                  padding: const EdgeInsets.all(1),
                  borderType: BorderType.RRect,
                  radius: Radius.circular(12),
                  dashPattern: [6, 3],
                  color: AppColors.grey,
                  strokeWidth: 1.5,
                  child: Container(
                    height: 140.h,
                    decoration: BoxDecoration(
                      color: AppColors.gray,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Assets.assetsIconsAlbum,
                            height: 36.h,
                            width: 36.w,
                          ),
                          8.ph,
                          CustomText(
                            text: 'uploadPhoto'.tr(),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.blackDark,
                          ),
                          4.ph,
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'photoRequired'.tr(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.graniteGray,
                                      fontSize: 10,
                                      fontFamily: 'Manrope'),
                                ),
                                TextSpan(
                                  text: '*',
                                  style: const TextStyle(
                                      color: AppColors.red,
                                      fontSize: 10,
                                      fontFamily: 'Manrope'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            : SizedBox(
                height: 140.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: selectedImages.length + 1,
                  separatorBuilder: (context, index) => 8.pw,
                  itemBuilder: (context, index) {
                    if (index < selectedImages.length) {
                      return DottedBorder(
                        padding: const EdgeInsets.all(1),
                        borderType: BorderType.RRect,
                        radius: Radius.circular(12),
                        dashPattern: [6, 3],
                        color: AppColors.grey,
                        strokeWidth: 1.5,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.r),
                          child: Image.file(
                            selectedImages[index],
                            width: 140.w,
                            height: 140.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    } else {
                      return GestureDetector(
                        onTap: onPickImage,
                        child: DottedBorder(
                          padding: const EdgeInsets.all(1),
                          borderType: BorderType.RRect,
                          radius: Radius.circular(12),
                          dashPattern: [6, 3],
                          color: AppColors.grey,
                          strokeWidth: 1.5,
                          child: Container(
                            width: 140.w,
                            height: 140.h,
                            decoration: BoxDecoration(
                              color: AppColors.gray,
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    Assets.assetsIconsAlbum,
                                    height: 36.h,
                                    width: 36.w,
                                  ),
                                  8.ph,
                                  CustomText(
                                    text: 'uploadPhoto'.tr(),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.blackDark,
                                  ),
                                  4.ph,
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'photoRequired'.tr(),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.graniteGray,
                                            fontSize: 12,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '*',
                                          style: const TextStyle(
                                            color: AppColors.red,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }
                  },
                ),
              ),
        8.ph,
        Row(
          children: [
            CustomText(
              text: 'photosUploaded'.tr(),
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.graniteGray,
            ),
            CustomText(
              text: ' ${selectedImages.length}/8',
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.graniteGray,
            ),
          ],
        ),
      ],
    );
  }
}
