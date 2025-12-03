part of '../company.dart';

class InfoCompanyDetail extends StatelessWidget {
  const InfoCompanyDetail({
    super.key,
    required this.title,
    required this.subtitle,
    required this.statsText,
    this.imageUrl,
  });

  final String title;
  final String subtitle;
  final String statsText;
  final String? imageUrl;
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
              ),
              child: ClipOval(
                  child: CustomImage(
                imageSource: imageUrl ?? '',
                width: 72.w,
                height: 72.h,
                fit: BoxFit.cover,
              )),
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
                text: title,
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.blackDark,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              4.ph,
              if (subtitle.isNotEmpty)
                CustomText(
                  text: subtitle,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackDark,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              if (subtitle.isNotEmpty) 4.ph,
              CustomText(
                text: statsText,
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
