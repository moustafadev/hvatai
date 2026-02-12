part of '../auth.dart';

class SocialsLoginScreen extends StatelessWidget {
  const SocialsLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  50.ph,
                  Image(image: AssetImage(Assets.assetsImagesBackground)),
                  24.ph,

                  /// Text Section
                  Center(
                    child: CustomText(
                      text: 'grabIt'.tr(),
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  4.ph,
                  CustomText(
                    text: 'joinCommunity'.tr(),
                    textAlign: TextAlign.center,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  32.ph,

                  CustomButton(
                    title: 'login'.tr(),
                    onPressed: () => context.push(AppRoutes.login),
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    radius: 10,
                    height: 54,
                  ),
                ]),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: 16.ph,
                    ),

                    /// Terms and Privacy
                    Wrap(
                      alignment: WrapAlignment.center,
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
                      ],
                    ),
                    Expanded(
                      child: 16.ph,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
