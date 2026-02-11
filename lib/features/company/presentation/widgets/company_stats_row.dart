part of '../company.dart';

class _CompanyStatsRow extends StatelessWidget {
  const _CompanyStatsRow({
    required this.rating,
    required this.reviews,
  });

  final double rating;
  final int reviews;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            CustomText(
              text: 'rating'.tr(),
              fontSize: 11.sp,
              fontWeight: FontWeight.w700,
            ),
            6.ph,
            Row(
              children: [
                Image.asset(
                  Assets.assetsIconsStar,
                  height: 16.h,
                  width: 16.w,
                  color: AppColors.goldenColor,
                ),
                6.pw,
                CustomText(
                  text: rating.toStringAsFixed(1),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                ),
              ],
            ),
          ],
        ),
        40.pw,
        Column(
          children: [
            CustomText(
              text: 'reviews'.tr(),
              fontSize: 11.sp,
              fontWeight: FontWeight.w700,
            ),
            6.ph,
            CustomText(
              text: _formatCount(reviews),
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
      ],
    );
  }

  String _formatCount(int value) {
    if (value >= 1000) {
      final thousands = value / 1000;
      return '${thousands.toStringAsFixed(1)}K';
    }
    return value.toString();
  }
}
