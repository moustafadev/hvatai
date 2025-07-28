part of '../search.dart';

class InfoCompanyNameDetail extends StatelessWidget {
  const InfoCompanyNameDetail({
    required this.name,
    super.key,
    required this.companyName,
    required this.lastName,
  });
  final String companyName;
  final String name;
  final String lastName;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(0),
              height: 72.h,
              width: 72.w,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(Assets.assetsImagesCompnayProfileBackground)
                      as ImageProvider,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              right: 6,
              bottom: 0,
              child: Container(
                margin: EdgeInsets.zero,
                height: 20.h,
                width: 20.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(Assets.assetsImagesCircleButton)
                        as ImageProvider,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
        8.pw,
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: companyName,
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.blackDark,
              ),
              4.ph,
              CustomText(
                text: "$name $lastName",
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.blackDark,
              ),
              4.ph,
              CustomText(
                text: "95K subscribers - 132 subscriptions ",
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.blackDark,
              ),
            ],
          ),
        )
      ],
    );
  }
}
