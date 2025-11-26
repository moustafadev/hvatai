part of '../profile.dart';

class InfoTradeProfileDetailBottom extends StatelessWidget {
  const InfoTradeProfileDetailBottom({super.key, required this.rating});
  final int rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 19.37, vertical: 16.5),
      decoration: BoxDecoration(
        color: AppColors.disabledPink,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomStatColumn(
              iconPath: Assets.assetsIconsStar,
              value: rating.toString(),
              label: "rating".tr(),
            ),
            CustomVerticalDivider(
              color: AppColors.primaryPink,
              thickness: 1,
              width: 20,
              height: 40,
            ),
            CustomStatColumn(
              value: "33,8K",
              label: "reviews".tr(),
            ),
            CustomVerticalDivider(
              color: AppColors.primaryPink,
              thickness: 1,
              width: 20,
              height: 40,
            ),
            CustomStatColumn(
              value: "169,7K",
              label: "sold".tr(),
            ),
            CustomVerticalDivider(
              color: AppColors.primaryPink,
              thickness: 1,
              width: 20,
              height: 40,
            ),
            CustomStatColumn(
              value: "+- 2d.",
              label: "delivery".tr(),
            ),
          ],
        ),
      ),
    );
  }
}
