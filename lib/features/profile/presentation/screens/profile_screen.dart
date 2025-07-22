part of '../profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<ProfileCubit>()
        ..getProfile()
        ..reloadProfile(),
      child: Scaffold(
          backgroundColor: AppColors.lightGreyBackground,
          body: SafeArea(
            bottom: false,
            child: BlocBuilder<ProfileCubit, ProfileState>(
              builder: (context, state) {
                final user = state.userProfileModel;

                if (state.helpAndContact.isEmpty ||
                    state.settingsOptions.isEmpty) {
                  return Center(
                      child: CircularProgressIndicator(
                    color: AppColors.grey,
                  ));
                }
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        14.ph,
                        const TopBarWidget(
                          isSearch: false,
                        ),
                        12.ph,
                        TopProfileInfo(),
                        24.ph,
                        ReferralsPointsAndAward(),
                        20.ph,
                        PaymentAndDelivery(),
                        HelpContacts(),
                        30.ph,
                        GestureDetector(
                          onTap: () {
                            // _showLogoutDialog();
                          },
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
                                  image: DecorationImage(
                                      image: AssetImage(
                                          Assets.assetsIconsArrowsALogout2)),
                                ),
                                SizedBox(width: 6.w),
                                CustomText(
                                  text: "logout".tr(),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  fontFamily: "Manrope",
                                ),
                              ],
                            )),
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
          )),
    );
  }
}





// void _showLogoutDialog() {
  //   Get.dialog(
  //     Dialog(
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(20),
  //       ),
  //       child: Container(
  //         padding: EdgeInsets.all(20),
  //         decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(20),
  //             gradient: primaryGradientColor),
  //         child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             Icon(
  //               Icons.warning_amber_rounded,
  //               size: 60,
  //               color: Colors.white,
  //             ),
  //             SizedBox(height: 15),
  //             Text(
  //               "confirm_logout".tr,
  //               style: TextStyle(
  //                 fontSize: 22,
  //                 fontWeight: FontWeight.bold,
  //                 color: Colors.white,
  //               ),
  //             ),
  //             SizedBox(height: 10),
  //             Text(
  //               "logout_confirmation".tr,
  //               textAlign: TextAlign.center,
  //               style: TextStyle(fontSize: 16, color: Colors.white70),
  //             ),
  //             SizedBox(height: 20),
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 // Cancel Button
  //                 Expanded(
  //                   child: ElevatedButton(
  //                     onPressed: () {
  //                       Get.back(); // Close dialog
  //                     },
  //                     style: ElevatedButton.styleFrom(
  //                       backgroundColor: Colors.white.withOpacity(0.3),
  //                       shape: RoundedRectangleBorder(
  //                         borderRadius: BorderRadius.circular(10),
  //                       ),
  //                     ),
  //                     child: Text(
  //                       "cancel".tr,
  //                       style: TextStyle(fontSize: 16, color: Colors.white),
  //                     ),
  //                   ),
  //                 ),
  //                 SizedBox(width: 10),
  //                 // Logout Button
  //                 Expanded(
  //                   child: ElevatedButton(
  //                     onPressed: () async {
  //                       await StorageService.logout();
  //                       await FirebaseAuth.instance.signOut();
  //                       Get.back(); // Close dialog
  //                       Get.offAll(() =>
  //                           SocialsLoginScreen()); // Navigate to login screen
  //                     },
  //                     style: ElevatedButton.styleFrom(
  //                       backgroundColor: Colors.white,
  //                       shape: RoundedRectangleBorder(
  //                         borderRadius: BorderRadius.circular(10),
  //                       ),
  //                     ),
  //                     child: Text(
  //                       "logout".tr,
  //                       style:
  //                           TextStyle(fontSize: 16, color: Colors.red.shade800),
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             )
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
