part of '../activity.dart';

class FavLiveVideoCard extends StatelessWidget {
  final String adminName;
  final String adminImage;
  final int viewsCount;
  final String title;
  final String description;
  final String liveImage;
  final String price;

  final bool? isFavorite;
  final VoidCallback? onFavoriteToggle;

  const FavLiveVideoCard({
    super.key,
    required this.adminName,
    required this.price,
    required this.adminImage,
    required this.viewsCount,
    required this.title,
    required this.description,
    required this.liveImage,
    this.isFavorite,
    this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          flex: 3,
          child: Stack(
            children: [
              CustomContainer(
                width: double.infinity,
                height: double.infinity,
                border: Border.all(
                  color: AppColors.transparent,
                ),
                borderRadius: BorderRadius.circular(10.r),
                image: DecorationImage(
                  image: AssetImage(Assets.assetsImagesLive),
                  fit: BoxFit.fill,
                ),
              ),
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
              Positioned(
                bottom: 8,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: CustomText(
                    text: 'Free shipping',
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.green,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
        8.ph,
        CustomText(
          text: title,
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: AppColors.blackDark,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        4.ph,
        CustomText(
          text: description,
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: AppColors.grey,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
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
      ],
    );
  }
}
