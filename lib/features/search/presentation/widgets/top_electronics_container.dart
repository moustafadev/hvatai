part of '../search.dart';

class TopElectronicsContainer extends StatelessWidget {
  const TopElectronicsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ReusableCustomContainer(
          height: 78.h,
          borderRadius: BorderRadius.circular(8.r),
          gradient: const LinearGradient(
            colors: [
              AppColors.blueLite,
              AppColors.purpleLite,
              AppColors.deepPurple,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          backgroundImage: Assets.assetsImagesHearPod,
          title: "Headphones",
          viewsText: "1.1K Views",
          viewsIcon: Assets.assetsImagesWave,
        ),
        8.pw,
        ReusableCustomContainer(
          height: 78.h,
          borderRadius: BorderRadius.circular(8.r),
          gradient: const LinearGradient(
            colors: [
              AppColors.blueLite,
              AppColors.purpleLite,
              AppColors.deepPurple,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          backgroundImage: Assets.assetsImagesHearPod,
          title: "Smartphones",
          viewsText: "1.1K Views",
          viewsIcon: Assets.assetsImagesWave,
        ),
      ],
    );
  }
}
