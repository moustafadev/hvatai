part of '../auth.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userData = GoRouterState.of(context).extra as UserRegistrationData;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                20.ph,
                CustomText(
                  text: "dontMissShow".tr(),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w800,
                ),
                20.ph,
                CustomContainer(
                  height: 551.h,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 20.h),
                  image: DecorationImage(
                      image: AssetImage(Assets.assetsImagesNotificationImage),
                      fit: BoxFit.fill),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomText(
                        text: 'beFirstStream'.tr(),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w800,
                      ),
                      8.ph,
                      CustomText(
                        text: 'receiveNotifications'.tr(),
                        fontSize: 14.sp,
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                ),
                32.ph,
                CustomGradientButton(
                  text: 'continue'.tr(),
                  isDisabled: false,
                  isLoading: false,
                  onPressed: () {
                    showDialog(
                      barrierColor: Colors.black.withOpacity(0.5),
                      context: context,
                      builder: (BuildContext context) {
                        return BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Dialog(
                            insetPadding: EdgeInsets.zero,
                            backgroundColor: Colors.transparent,
                            child: Container(
                              width: 550.w,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.w, vertical: 20.h),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(14.r),
                              ),
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
                                              fontSize: 28.sp,
                                              color: AppColors.white,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'friends'.tr(),
                                            style: TextStyle(
                                              fontSize: 28.sp,
                                              fontWeight: FontWeight.bold,
                                              color: AppColors.primaryColor,

                                              // foreground: Paint()
                                              //   ..shader = const LinearGradient(
                                              //     colors: [
                                              //       AppColors.blueLite,
                                              //       AppColors.purpleLite,
                                              //       AppColors.deepPurple,
                                              //     ],
                                              //     begin: Alignment.topLeft,
                                              //     end: Alignment.bottomRight,
                                              //   ).createShader(
                                              //       const Rect.fromLTWH(
                                              //           0, 0, 100, 30)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.h),
                                  Container(
                                    width: 500.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14.r),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 19.h,
                                              left: 16.w,
                                              right: 16.w),
                                          child: Column(
                                            children: [
                                              CustomText(
                                                text: 'wantContactsTitle'.tr(),
                                                fontSize: 17.sp,
                                                fontWeight: FontWeight.w600,
                                                textAlign: TextAlign.center,
                                                fontFamily: 'SFProRounded',
                                              ),
                                              CustomText(
                                                text: 'wantContactsDescription'
                                                    .tr(),
                                                fontSize: 14.sp,
                                                textAlign: TextAlign.center,
                                                fontFamily: 'SFProRounded',
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 20.h),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: GestureDetector(
                                                onTap: () => context
                                                    .go(AppRoutes.imageDelay),
                                                child: CustomContainer(
                                                  height: 44.h,
                                                  border: Border(
                                                    top: BorderSide(
                                                        color: AppColors
                                                            .greyLiteLine),
                                                    right: BorderSide(
                                                        color: AppColors
                                                            .greyLiteLine),
                                                  ),
                                                  child: Center(
                                                    child: CustomText(
                                                      text: 'dontAllow'.tr(),
                                                      fontSize: 16.sp,
                                                      color: Colors.blue,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: GestureDetector(
                                                onTap: () => context.push(
                                                    AppRoutes.imageDelay,
                                                    extra: userData),
                                                child: CustomContainer(
                                                  height: 44.h,
                                                  conColor: AppColors.button,
                                                  border: Border(
                                                    top: BorderSide(
                                                        color: AppColors
                                                            .greyLiteLine),
                                                    left: BorderSide(
                                                        color: AppColors
                                                            .greyLiteLine),
                                                  ),
                                                  child: Center(
                                                    child: CustomText(
                                                      text: 'ok'.tr(),
                                                      fontSize: 16.sp,
                                                      color: Colors.blue,
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
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
