part of '../search.dart';

class ReviewItem extends StatelessWidget {
  final String username;
  final String rating;
  final String date;
  final String reviewText;
  final String? userImage;
  final String moreIcon;
  final String starIcon;

  const ReviewItem({
    super.key,
    required this.username,
    required this.rating,
    required this.date,
    required this.reviewText,
    this.userImage,
    this.moreIcon = Assets.assetsIconsMore,
    this.starIcon = Assets.assetsIconsStar,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.r),
                child: CircleAvatar(
                  radius: 16.r,
                  child: CustomImage(
                      imageSource: userImage ?? '', width: 32.w, height: 32.h),
                ),
              ),
              8.pw,
              CustomText(
                text: username,
                fontSize: 14.sp,
                fontWeight: FontWeight.w800,
              ),
              const Spacer(),
              CustomText(
                  text: 'Ответить',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primaryPink)
            ],
          ),
          8.ph,
          Row(
            children: [
              Image.asset(starIcon,
                  color: AppColors.goldenColor, height: 16.h, width: 16.w),
              CustomText(
                text: rating,
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.blackDark,
              ),
              8.pw,
              CustomText(
                text: date,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.graniteGray,
              ),
            ],
          ),
          8.ph,
          ReadMoreText(
            reviewText,
            trimMode: TrimMode.Line,
            trimLines: 2,
            colorClickableText: AppColors.primaryPink,
            trimCollapsedText: 'viewAll'.tr(),
            trimExpandedText: 'showLess'.tr(),
            moreStyle: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.primaryPink,
            ),
            lessStyle: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.primaryPink,
            ),
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.blackDark,
            ),
          ),
        ],
      ),
    );
  }
}
