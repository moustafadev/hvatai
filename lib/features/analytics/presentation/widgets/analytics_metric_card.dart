part of '../analytics.dart';

class AnalyticsMetricCard extends StatelessWidget {
  const AnalyticsMetricCard({
    super.key,
    required this.title,
    required this.value,
    this.onInfoTap,
  });

  final String title;
  final String value;
  final VoidCallback? onInfoTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: title,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w800,
                  color: AppColors.blackDark,
                ),
                14.ph,
                CustomText(
                  text: value,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w800,
                  color: AppColors.blackDark,
                ),
              ],
            ),
          ),
          if (onInfoTap != null)
            GestureDetector(
                onTap: onInfoTap,
                child: SvgPicture.asset(Assets.assetsIconsInfoCircle2)),
        ],
      ),
    );
  }
}
