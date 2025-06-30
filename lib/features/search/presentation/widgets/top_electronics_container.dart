part of '../search.dart';

class TopElectronicsContainer extends StatelessWidget {
  const TopElectronicsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomContainer(
          height: 78.h,
          width: 121.w,
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
          image: DecorationImage(
            image: AssetImage(Assets.assetsImagesHearPod),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5), // ✅ ظل شفاف أعلى الصورة
              BlendMode.darken, // أو try: overlay, multiply, softLight
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 12.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: CustomText(
                    text: "Headphones",
                    textAlign: TextAlign.center,
                    color: AppColors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0, left: 12.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Row(
                    children: [
                      Image.asset(
                        Assets.assetsImagesWave,
                        height: 18.h,
                        width: 18.w,
                      ),
                      15.pw,
                      CustomText(
                        text: "1.1K Views",
                        textAlign: TextAlign.center,
                        color: AppColors.white,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        8.pw,
        CustomContainer(
          height: 78.h,
          width: 121.w,
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
          image: DecorationImage(
            image: AssetImage(Assets.assetsImagesHearPod),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5), // ✅ ظل شفاف أعلى الصورة
              BlendMode.darken, // أو try: overlay, multiply, softLight
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 12.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: CustomText(
                    text: "Smartphones",
                    textAlign: TextAlign.center,
                    color: AppColors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0, left: 12.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Row(
                    children: [
                      Image.asset(
                        Assets.assetsImagesWave,
                        height: 18.h,
                        width: 18.w,
                      ),
                      15.pw,
                      CustomText(
                        text: "1.1K Views",
                        textAlign: TextAlign.center,
                        color: AppColors.white,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
