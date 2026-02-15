part of '../customs/customs.dart';

class ReviewItem extends StatelessWidget {
  final UserPersonalRating reviewModel;
  final VoidCallback? onDelete;
  final VoidCallback? onReply;

  const ReviewItem({
    super.key,
    required this.reviewModel,
    this.onDelete,
    this.onReply,
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
                      imageSource: reviewModel.image ?? '',
                      width: 32.w,
                      height: 32.h),
                ),
              ),
              8.pw,
              CustomText(
                text: reviewModel.reviewer?.name ?? 'Unknown',
                fontSize: 14.sp,
                fontWeight: FontWeight.w800,
              ),
              const Spacer(),
              if (onDelete != null)
                GestureDetector(
                  onTap: onDelete,
                  child: CustomText(
                    text: 'delete'.tr(),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryPink,
                  ),
                )
              else if (onReply != null)
                GestureDetector(
                  onTap: onReply,
                  child: CustomText(
                    text: 'reply'.tr(),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryPink,
                  ),
                ),
            ],
          ),
          8.ph,
          Row(
            children: [
              Image.asset(Assets.assetsIconsStar,
                  color: AppColors.goldenColor, height: 16.h, width: 16.w),
              CustomText(
                text: reviewModel.score.toString(),
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.blackDark,
              ),
              8.pw,
              CustomText(
                text: _formatDate(reviewModel.createdAt),
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.graniteGray,
              ),
            ],
          ),
          8.ph,
          ReadMoreText(
            reviewModel.comment ?? '',
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
          // Reply section
          if (reviewModel.reply != null && reviewModel.reply!.isNotEmpty) ...[
            16.ph,
            Container(
              padding: EdgeInsets.all(12.r),
              decoration: BoxDecoration(
                color: AppColors.lightGreyBackground,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(
                  color: AppColors.primaryPink.withValues(alpha: 0.3),
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.reply,
                        size: 16.sp,
                        color: AppColors.primaryPink,
                      ),
                      6.pw,
                      CustomText(
                        text: 'yourAnswer'.tr(),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.primaryPink,
                      ),
                      const Spacer(),
                      if (reviewModel.repliedAt != null)
                        CustomText(
                          text: _formatDate(reviewModel.repliedAt!),
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.graniteGray,
                        ),
                    ],
                  ),
                  8.ph,
                  CustomText(
                    text: reviewModel.reply!,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.blackDark,
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  String _formatDate(String dateString) {
    try {
      final date = DateTime.parse(dateString);
      return '${date.day.toString().padLeft(2, '0')}.${date.month.toString().padLeft(2, '0')}.${date.year}';
    } catch (e) {
      return dateString;
    }
  }
}
