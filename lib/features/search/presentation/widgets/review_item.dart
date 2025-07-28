part of '../search.dart';

class ReviewItem extends StatelessWidget {
  final String username;
  final String rating;
  final String date;
  final String reviewText;
  final VoidCallback onViewAllTap;
  final String userImage;
  final String moreIcon;
  final String starIcon;

  const ReviewItem({
    super.key,
    required this.username,
    required this.rating,
    required this.date,
    required this.reviewText,
    required this.onViewAllTap,
    this.userImage = Assets.assetsImagesGirl,
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
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(userImage, height: 32.h, width: 32.w),
              8.pw,
              CustomText(
                text: username,
                fontSize: 14.sp,
                fontWeight: FontWeight.w800,
              ),
              const Spacer(),
              Image.asset(moreIcon, color: AppColors.primaryPink),
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
          CustomText(
            text: reviewText,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          6.ph,
          GestureDetector(
            onTap: onViewAllTap,
            child: Row(
              children: [
                CustomText(
                  text: 'viewAll'.tr(),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primaryPink,
                ),
                8.pw,
                Icon(Icons.keyboard_arrow_down,
                    size: 14.sp, color: AppColors.primaryPink),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
