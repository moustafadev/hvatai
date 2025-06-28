part of '../home.dart';

class LiveVideoCard extends StatelessWidget {
  final String adminName;
  final String adminImage;
  final int viewsCount;

  final String description;
  final String liveImage;

  /// ✅ Optional favorite icon parameters
  final bool? isFavorite;
  final VoidCallback? onFavoriteToggle;

  const LiveVideoCard({
    super.key,
    required this.adminName,
    required this.adminImage,
    required this.viewsCount,
    required this.description,
    required this.liveImage,
    this.isFavorite,
    this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    // final String imageUrl = liveImage.isNotEmpty
    //     ? liveImage
    //     : adminImage.isNotEmpty
    //         ? adminImage
    //         : '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Admin Info
        Row(
          children: [
            CircleAvatar(
              radius: 12.r,
              backgroundColor: AppColors.transparent,
              backgroundImage: AssetImage(
                Assets.assetsIconsApple1,
              ),
            ),
            5.pw,
            Flexible(
              child: CustomText(
                text: adminName,
                color: AppColors.blackDark,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        6.ph,
        // Live Image + Favorite Overlay
        Stack(
          children: [
            CustomContainer(
              height: 267.h,
              border: Border.all(
                color: AppColors.transparent,
              ),
              borderRadius: BorderRadius.circular(10.r),
              image: DecorationImage(
                image: AssetImage(
                    Assets.assetsImagesLive), // Your base64 image here
                fit: BoxFit.cover, // Optional, how to fit the image inside
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                    decoration: BoxDecoration(
                      color: AppColors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: CustomText(
                      text: "Live • $viewsCount",
                      textAlign: TextAlign.center,
                      color: AppColors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            // if (isFavorite != null && onFavoriteToggle != null)
            Positioned(
              top: 10,
              right: 10,
              child: Column(
                children: [
                  GestureDetector(
                      onTap: onFavoriteToggle,
                      child: CircleAvatar(
                        radius: 12.r,
                        backgroundColor: AppColors.blackDark,
                        child: Image.asset(
                          Assets.assetsIconsSave,
                          height: 14.h,
                          width: 14.w,
                          fit: BoxFit.cover,
                          color: AppColors.white,
                        ),
                      )),
                  4.ph,
                  CustomText(
                      text: viewsCount.toString(),
                      color: AppColors.white,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold),
                ],
              ),
            ),
          ],
        ),

        // Title + Category
        CustomText(
          text: description,
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: AppColors.blackDark,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
