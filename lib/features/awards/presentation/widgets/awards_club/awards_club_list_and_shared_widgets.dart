part of '../../awards.dart';

class AwardsClubListWidget extends StatelessWidget {
  const AwardsClubListWidget({super.key});

  static const List<String> rewardImages = <String>[
    Assets.assetsImagesBronzeAward,
    Assets.assetsImagesSilverAward,
    Assets.assetsImagesGoldAward,
    Assets.assetsImagesDiamondAward,
    Assets.assetsImagesPlatinumAward,
  ];

  static const List<String> rewardTitles = <String>[
    'bronze',
    'silver',
    'gold',
    'diamond',
    'platinum',
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(
              vertical: 12.h,
              horizontal: 10.w,
            ),
            child: CustomAwardsCard(
              imagePath: rewardImages[index],
              level: 'Level ${index + 1}'.tr(),
              title: rewardTitles[index].tr(),
              features: [
                "-${(index + 1) * 3}% on prices in the store".tr(),
                "Cashback up to ${(index + 1) * 5}%".tr(),
              ],
            ),
          );
        },
        childCount: rewardImages.length,
      ),
    );
  }
}

class CompanyAvatarWidget extends StatelessWidget {
  const CompanyAvatarWidget({
    super.key,
    required this.size,
    this.imageUrl,
  });

  final double size;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: ClipOval(
        child: CustomImage(
          imageSource: imageUrl ?? '',
          width: size,
          height: size,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class CustomRowAwardsGift extends StatelessWidget {
  const CustomRowAwardsGift({
    super.key,
    required this.title,
    required this.imagePath,
    this.color,
    required this.onTap,
  });

  final String title;
  final String imagePath;
  final Color? color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          CircleAvatar(
            radius: 20.r,
            backgroundColor: AppColors.gray,
            child: Image.asset(
              imagePath,
              color: color ?? AppColors.blackDark,
              width: 20.w,
              height: 20.h,
            ),
          ),
          12.pw,
          CustomText(
            text: title,
            fontSize: 15.sp,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
    );
  }
}
