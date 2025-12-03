part of '../auth.dart';

class SocialsLoginScreen extends StatelessWidget {
  const SocialsLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SocialLoginCubit>(
      create: (context) => locator<SocialLoginCubit>(),
      child: BlocBuilder<SocialLoginCubit, SocialLoginState>(
        builder: (context, state) {
          final cubit = context.read<SocialLoginCubit>();
          return Scaffold(
            backgroundColor: AppColors.lightGreyBackground,
            body: SafeArea(
              bottom: false,
              child: CustomBackgroundScaffold(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      /// Top Bar
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () => context.push(AppRoutes.registration),
                              child: Row(
                                children: [
                                  CustomText(
                                    text: 'register'.tr(),
                                    color: AppColors.primaryPink,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    //fontFamily: 'MontserratAlternates',
                                  ),
                                  const Icon(Icons.arrow_forward_ios_rounded,
                                      color: AppColors.primaryPink, size: 15),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image(image: AssetImage(Assets.assetsImagesBackground)),
                      20.ph,

                      /// Text Section
                      CustomText(
                        text: 'grabIt'.tr(),
                        fontSize: 40.sp,
                        fontWeight: FontWeight.w800,
                      ),
                      CustomText(
                        text: 'joinCommunity'.tr(),
                        textAlign: TextAlign.center,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      20.ph,

                      /// Action Buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocialCircleButton(
                            assetPath: Assets.assetsIconsApple,
                            onTap: () => cubit.signUpWithApple(context),
                          ),
                          16.pw,
                          SocialCircleButton(
                            assetPath: Assets.assetsIconsGoogle,
                            onTap: () => cubit.signUpWithGoogle(context),
                          ),
                          16.pw,
                          GestureDetector(
                            onTap: () => context.push(AppRoutes.login),
                            child: CircleAvatar(
                              radius: 24.r,
                              backgroundColor: AppColors.primaryColor,
                              child: Center(
                                  child: Icon(
                                Icons.email,
                                size: 24,
                                color: AppColors.white,
                              )),
                            ),
                          ),
                        ],
                      ),
                      20.ph,

                      /// Terms and Privacy
                      Wrap(
                        alignment: WrapAlignment.start,
                        spacing: 1,
                        children: [
                          CustomText(
                            text: 'termsConditions11'.tr(),
                            textAlign: TextAlign.center,
                            fontSize: 12.sp,
                            color: AppColors.blackDark,
                            fontWeight: FontWeight.w600,
                          ),
                          GestureDetector(
                            onTap: () =>
                                context.push(AppRoutes.termAndConditions),
                            child: CustomText(
                              text: 'termsService'.tr(),
                              textAlign: TextAlign.center,
                              fontSize: 12.sp,
                              color: AppColors.primaryPink,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          2.pw,
                          CustomText(
                            text: 'and2'.tr(),
                            // textAlign: TextAlign.center,
                            fontSize: 12.sp,
                            color: AppColors.blackDark,
                            fontWeight: FontWeight.w600,
                          ),
                          2.pw,
                          GestureDetector(
                            onTap: () => context.push(AppRoutes.privacyPolicy),
                            child: Center(
                              child: CustomText(
                                text: 'privacy2'.tr(),
                                textAlign: TextAlign.center,
                                fontSize: 12.sp,
                                color: AppColors.primaryPink,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          15.ph,
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
