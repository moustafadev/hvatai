part of '../profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomProfileBackgroundScaffold(
      child: BlocProvider(
        create: (context) => locator<ProfileCubit>(),
        child: Scaffold(
            backgroundColor: Colors.white,
            body: BlocBuilder<ProfileCubit, ProfileState>(
              builder: (context, state) {
                return StreamBuilder(
                  // stream: getCurrentUserData,
                  stream: Stream.empty(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(),
                        ],
                      );
                    }
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            25.ph,
                            const TopBarWidget(
                              isSearch: false,
                            ),
                            12.ph,
                            Row(
                              children: [
                                Container(
                                  height: 41.h,
                                  width: 41.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image:

                                          // (snapshot.data
                                          //                 .data()?['image'] !=
                                          //             null &&
                                          //         snapshot.data!
                                          //             .data()!['image']
                                          //             .toString()
                                          //             .isNotEmpty)
                                          //     ?

                                          //     NetworkImage(
                                          //         snapshot.data!.data()?['image'])
                                          //     :

                                          AssetImage(Assets
                                                  .assetsImagesProfileImage)
                                              as ImageProvider,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                15.pw,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      fontFamily: "Manrope",
                                      text: "Ahmed Ramadan".tr(),
                                      // snapshot.data!.data()!.firstName.toString(),
                                      fontWeight: FontWeight.w800,
                                      fontSize: 14.sp,
                                    ),
                                    2.ph,
                                    Row(
                                      children: [
                                        Image.asset(Assets.assetsIconsStar,
                                            color: AppColors.goldenColor,
                                            height: 16.h,
                                            width: 16.w),
                                        3.pw,
                                        CustomText(
                                          text: "4.7",
                                        ),
                                        12.pw,
                                        CustomGradientButton(
                                          fontSize: 13.sp,
                                          height: 30.h,
                                          borderRadius: 30.r,
                                          fontWeight: FontWeight.w400,
                                          isDisabled: true,
                                          width: 130.w,
                                          fontFamily: "Gilroy-Bold",
                                          buttonColor: AppColors.primary,
                                          text: "tradeProfile".tr(),
                                          textColor: AppColors.blackDark,
                                          onPressed: () {
                                            // Get.to(() => TradeProfileScreen(
                                            //       userId: FirebaseAuth
                                            //           .instance.currentUser!.uid,
                                            //     ));
                                          },
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                const Spacer(),
                                GestureDetector(
                                  onTap: () {},
                                  child: CircleAvatar(
                                    backgroundColor: AppColors.gray,
                                    radius: 20.r,
                                    child: Image.asset(
                                      Assets.assetsIconsSettings,
                                      height: 18.h,
                                      width: 18.w,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            24.ph,
                            // GestureDetector(
                            //   onTap: () {
                            //     // showModalBottomSheet(
                            //     //   context: context,
                            //     //   isScrollControlled: true,
                            //     //   backgroundColor: Colors.transparent,
                            //     //   builder: (_) {
                            //     //     return DraggableScrollableSheet(
                            //     //       initialChildSize: 0.6,
                            //     //       minChildSize: 0.4,
                            //     //       maxChildSize: 0.95,
                            //     //       expand: false,
                            //     //       builder: (_, controller) {
                            //     //         return Container(
                            //     //           padding: EdgeInsets.symmetric(
                            //     //               horizontal: 16, vertical: 12),
                            //     //           decoration: BoxDecoration(
                            //     //             color: Colors.white,
                            //     //             borderRadius: BorderRadius.vertical(
                            //     //                 top: Radius.circular(16)),
                            //     //           ),
                            //     //           child: ListView(
                            //     //             controller: controller,
                            //     //             children: [
                            //     //               Row(
                            //     //                 mainAxisAlignment:
                            //     //                     MainAxisAlignment.spaceBetween,
                            //     //                 children: [
                            //     //                   CustomText(
                            //     //                     text: "start_selling_guide".tr,
                            //     //                     fontSize: 18,
                            //     //                     fontWeight: FontWeight.bold,
                            //     //                   ),
                            //     //                   IconButton(
                            //     //                     icon: Icon(Icons.close),
                            //     //                     onPressed: () =>
                            //     //                         Navigator.of(context).pop(),
                            //     //                   ),
                            //     //                 ],
                            //     //               ),
                            //     //               Divider(),
                            //     //               CustomText(
                            //     //                 text:
                            //     //                     "Here's how you can start selling:",
                            //     //                 fontSize: 16,
                            //     //                 fontWeight: FontWeight.w600,
                            //     //               ),
                            //     //               const SizedBox(height: 12),
                            //     //               ListTile(
                            //     //                 leading: Icon(Icons.live_tv_outlined,
                            //     //                     color: Colors.purple),
                            //     //                 title: Text("Start a Live Stream"),
                            //     //                 onTap: () async {
                            //     //                   bool isProcessing = false;

                            //     //                   if (isProcessing) return; // Prevent multiple taps
                            //     //                   isProcessing = true;

                            //     //                   // Show loading indicator
                            //     //                   Get.dialog(
                            //     //                     Center(child: CircularProgressIndicator(color: Colors.purple)),
                            //     //                     barrierDismissible: false,
                            //     //                   );

                            //     //                   try {
                            //     //                     final userData = snapshot.data!.data()!;
                            //     //                     final userName = userData['firstName'] ?? 'User';
                            //     //                     final fcmToken = userData['fcmToken'] ?? '';

                            //     //                     await SendNotificationService.sendToAllUserEntityTokens(
                            //     //                       title: '📢 $userName is Live!',
                            //     //                       body: 'Join the live stream now.',
                            //     //                       data: {},
                            //     //                     );

                            //     //                     String title = _titleController.text.trim();
                            //     //                     if (title.isEmpty) title = 'Live Streaming';

                            //     //                     final liveStreamData = {
                            //     //                       "title": title,
                            //     //                       "adminName": userData['firstName'].toString(),
                            //     //                       "adminPhoto":
                            //     //                       'https://images.unsplash.com/photo-1541516160071-4bb0c5af65ba?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dGFraW5nJTIwcGhvdG98ZW58MHx8MHx8fDA%3D',
                            //     //                       "adminUid": uid,
                            //     //                       "isAdmin": true,
                            //     //                       "channelId": ChannelId,
                            //     //                       'viewsCount': 0,
                            //     //                       'currentmusic': null,
                            //     //                       'currentFilter': null,
                            //     //                       'currentmusic_id': null,
                            //     //                       'heartbeat': null,
                            //     //                       'isBlocked': false,
                            //     //                       "timestamp": FieldValue.serverTimestamp(),
                            //     //                     };

                            //     //                     await FirebaseFirestore.instance
                            //     //                         .collection('livestreams')
                            //     //                         .doc(ChannelId)
                            //     //                         .set(liveStreamData);

                            //     //                     Get.back(); // Close loading dialog
                            //     //                     Navigator.of(context).pop(); // Close bottom sheet if needed

                            //     //                     Get.to(() => LiveStreamingScreen(
                            //     //                       channelId: ChannelId ?? '',
                            //     //                       isAdmin: true,
                            //     //                       uid: uid ?? 0,
                            //     //                     ));
                            //     //                   } catch (e) {
                            //     //                     Get.back(); // Close loading dialog
                            //     //                     Get.snackbar(
                            //     //                       "Error",
                            //     //                       "Failed to start live stream.",
                            //     //                       snackPosition: SnackPosition.BOTTOM,
                            //     //                       backgroundColor: Colors.red,
                            //     //                       colorText: Colors.white,
                            //     //                     );
                            //     //                   } finally {
                            //     //                     isProcessing = false;
                            //     //                   }

                            //     //                 },
                            //     //               ),
                            //     //               ListTile(
                            //     //                 leading: Icon(Icons.add_shopping_cart,
                            //     //                     color: Colors.blue),
                            //     //                 title:
                            //     //                     Text("Upload a Product for Sale"),
                            //     //                 onTap: () {
                            //     //                   Navigator.of(context).pop();
                            //     //                   Get.to(() => CreateProductScreen());
                            //     //                 },
                            //     //               ),
                            //     //               const SizedBox(height: 20),
                            //     //             ],
                            //     //           ),
                            //     //         );
                            //     //       },
                            //     //     );
                            //     //   },
                            //     // );
                            //   },
                            //   child: Container(
                            //     height: 155.h,
                            //     width: double.infinity,
                            //     decoration: BoxDecoration(
                            //       borderRadius: BorderRadius.circular(12.r),
                            //       image: DecorationImage(
                            //         image: AssetImage(Assets
                            //             .assetsImagesProfileAdvertisementImage),
                            //         fit: BoxFit.fill,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // CustomText(
                            //   text: "account".tr(),
                            //   fontSize: 20.sp,
                            //   fontWeight: FontWeight.w600,
                            // ),
                            // 12.ph,
                            // CustomGradientButton(
                            //   text: "Sold Products",
                            //   onPressed: () {
                            //     Get.to(()=>SoldProductsScreen());
                            //   },
                            Row(
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      // Get.to(() => InviteFriendScreen());
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15.r),
                                          border: Border.all(
                                              color: Colors.grey
                                                  .withOpacity(0.2))),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 14.w, vertical: 12.h),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.asset(
                                              Assets.assetsImagesUserGroupIcon,
                                              height: 24.h,
                                              width: 24.w,
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            FittedBox(
                                              child: CustomText(
                                                text: "referralsPoints".tr(),
                                                fontFamily: "Manrope",
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                CustomText(
                                                  text: "balance".tr(),
                                                  fontFamily: "Gilroy-Bold",
                                                  color: AppColors.blackDark,
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                                CustomText(
                                                  text: '1000 ₽',
                                                  fontFamily: "Gilroy-Bold",
                                                  color: AppColors.primary,
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                12.pw,
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      context.push(
                                        AppRoutes.myAwards,
                                        // must be a UserRegistrationData instance
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15.r),
                                          border: Border.all(
                                              color: Colors.grey
                                                  .withOpacity(0.2))),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 14.w, vertical: 12.h),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.asset(
                                              Assets.assetsIconsCrownIcon,
                                              height: 25.h,
                                              width: 25.w,
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            FittedBox(
                                              child: CustomText(
                                                text: "myAward".tr(),
                                                fontFamily: "Manrope",
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            CustomText(
                                              text: "viewCoupons".tr(),
                                              fontFamily: "Manrope",
                                              color: AppColors.blackDark,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            20.ph,
                            PaymentAndDelivery(),

                            HelpContacts(),

                            SizedBox(
                              height: 30.h,
                            ),
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
                                          image: AssetImage(Assets
                                              .assetsIconsArrowsALogout2)),
                                    ),
                                    SizedBox(width: 6.w),
                                    CustomText(
                                      text: "logout".tr(),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      fontFamily: "Gilroy-Bold",
                                    ),
                                  ],
                                )),
                              ),
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            Center(
                              child: CustomText(
                                text: "v25.3.5 (11)\n© 2023 Whatnot, Inc.",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                textAlign: TextAlign.center,
                                fontFamily: "Gilroy-Bold",
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            )),
      ),
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
