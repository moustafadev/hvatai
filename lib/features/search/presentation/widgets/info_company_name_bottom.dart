part of '../search.dart';

class InfoCompanyNameBottom extends StatelessWidget {
  const InfoCompanyNameBottom({
    super.key,
    required this.rating,
    required this.reviews,
    required this.favorites,
    required this.deliveryEstimate,
  });

  final double rating;
  final int reviews;
  final int favorites;
  final String deliveryEstimate;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 19.37, vertical: 16.5),
      decoration: BoxDecoration(
        color: AppColors.lightYellow,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomStatColumn(
              iconPath: Assets.assetsIconsStar,
              value: rating.toStringAsFixed(1),
              label: "rating".tr(),
            ),
            CustomVerticalDivider(
              color: AppColors.darkYellow,
              thickness: 1,
              width: 20,
              height: 40,
            ),
            CustomStatColumn(
              value: _formatCount(reviews),
              label: "reviews".tr(),
            ),
            CustomVerticalDivider(
              color: AppColors.darkYellow,
              thickness: 1,
              width: 20,
              height: 40,
            ),
            CustomStatColumn(
              value: _formatCount(favorites),
              label: "favorites".tr(),
            ),
            CustomVerticalDivider(
              color: AppColors.darkYellow,
              thickness: 1,
              width: 20,
              height: 40,
            ),
            CustomStatColumn(
              value: deliveryEstimate,
              label: "delivery".tr(),
            ),
          ],
        ),
      ),
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
