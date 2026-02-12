part of '../auth.dart';

void showContactsDialog(BuildContext context) {
  showDialog(
    barrierColor: AppColors.blackColor.withValues(alpha: 0.5),
    context: context,
    builder: (BuildContext context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Dialog(
          insetPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'wantBest'.tr(),
                          style: TextStyle(
                            fontSize: 32.sp,
                            color: AppColors.white,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        TextSpan(
                          text: 'friends'.tr(),
                          style: TextStyle(
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w800,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                100.ph,
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.white
                            .withValues(alpha: 0.70), // material tint
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: 19.h, left: 16.w, right: 16.w),
                            child: Column(
                              children: [
                                CustomText(
                                  text: 'wantContactsTitle'.tr(),
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w600,
                                  textAlign: TextAlign.center,
                                ),
                                CustomText(
                                  text: 'wantContactsDescription'.tr(),
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          20.ph,
                          Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () =>
                                      context.push(AppRoutes.imageDelay),
                                  child: CustomContainer(
                                    height: 44.h,
                                    border: Border(
                                      top: BorderSide(
                                          width: 0.33,
                                          color: AppColors.greyLiteLine),
                                      right: BorderSide(
                                          width: 0.33,
                                          color: AppColors.greyLiteLine),
                                    ),
                                    child: Center(
                                      child: CustomText(
                                        text: 'dontAllow'.tr(),
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.blue,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () => context.push(
                                    AppRoutes.imageDelay,
                                  ),
                                  child: CustomContainer(
                                    height: 44.h,
                                    conColor: AppColors.button,
                                    border: Border(
                                      top: BorderSide(
                                          width: 0.33,
                                          color: AppColors.greyLiteLine),
                                    ),
                                    child: Center(
                                      child: CustomText(
                                        text: 'ok'.tr(),
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.blue,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                12.ph,
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.1),
                    child: Image.asset(
                      Assets.assetsImagesPointUp,
                      width: 72.w,
                      height: 72.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
