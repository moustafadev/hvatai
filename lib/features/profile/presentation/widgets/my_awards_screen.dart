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
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: AppColors.blackColorIcon),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // centerTitle: true,
        // title: CustomText(
        //   text: "My awards".tr(),
        //   fontWeight: FontWeight.w600,
        //   fontSize: 16,
        //   fontFamily: "SF Pro Rounded",
        //   color: AppColors.blackDark,
        // ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        child: ListView.builder(
          itemCount: rewardImages.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "My awards".tr(),
                    fontWeight: FontWeight.w800,
                    fontSize: 20.sp,
                    fontFamily: "Manrope",
                    color: AppColors.blackDark,
                  ),
                  16.ph,
                  Container(
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(rewardImages[index]),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
