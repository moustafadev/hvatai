part of '../profile.dart';

class MyAwardsScreen extends StatelessWidget {
  MyAwardsScreen({super.key});

  final List<String> rewardImages = [
    Assets.assetsImagesBronzeAward,
    Assets.assetsImagesSilverAward,
    Assets.assetsImagesGoldAward,
    Assets.assetsImagesDiamondAward,
    Assets.assetsImagesPlatinumAward,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: AppColors.blackColorIcon),
          onPressed: () {
            context.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "My awards".tr(),
              fontWeight: FontWeight.w800,
              fontSize: 20.sp,
            ),
            16.ph,
            Expanded(
              child: ListView.builder(
                itemCount: rewardImages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: CustomAwardsCard(
                      imagePath: rewardImages[index],
                      level: 'Level ${index + 1}'.tr(),
                      title: [
                        'bronze'.tr(),
                        'silver'.tr(),
                        'gold'.tr(),
                        'diamond'.tr(),
                        'platinum'.tr(),
                      ][index]
                          .tr(),
                      features: [
                        "-${(index + 1) * 3}% on prices in the store".tr(),
                        "Cashback up to ${(index + 1) * 5}%".tr(),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
