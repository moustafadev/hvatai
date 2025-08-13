part of '../profile.dart';

class BodyNormalProfile extends StatelessWidget {
  const BodyNormalProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: BlocConsumer<ProfileCubit, ProfileState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = context.read<ProfileCubit>();

          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(color: AppColors.grey),
            );
          }

          if (state.errorMessage.isNotEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: state.errorMessage,
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  20.ph,
                  CustomButton(
                    title: 'retry'.tr(),
                    onPressed: cubit.getProfile,
                  ),
                ],
              ),
            );
          }

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  14.ph,
                  const TopBarWidget(isSearch: false),
                  12.ph,
                  const TopProfileInfo(),
                  24.ph,
                  const ReferralsPointsAndAward(),
                  20.ph,
                  const PaymentAndDelivery(),
                  const HelpContacts(),
                  30.ph,
                  GestureDetector(
                    onTap: () => CustomDialog.show(
                      context,
                      title: 'logout'.tr(),
                      content: 'logoutConfirmation'.tr(),
                      confirmText: 'logout'.tr(),
                      isDestructive: true,
                      onConfirm: () => cubit.signOut(context),
                    ),
                    child: CustomContainer(
                      height: 40.h,
                      width: double.infinity,
                      borderRadius: BorderRadius.circular(10.r),
                      conColor: AppColors.greyButton,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomContainer(
                              height: 18.h,
                              width: 18.w,
                              image: const DecorationImage(
                                image: AssetImage(
                                    Assets.assetsIconsArrowsALogout2),
                              ),
                            ),
                            6.pw,
                            CustomText(
                              text: "logout".tr(),
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  16.ph,
                  Center(
                    child: CustomText(
                      text: "v25.3.5 (11)\n© 2023 Whatnot, Inc.",
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  100.ph,
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
