import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/theme/assets.dart';
import 'package:hvatai/routes/app_routes.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit()
      : super(ProfileState(
          uid: 10000 + Random().nextInt(90000),
          channelId: List.generate(
              5,
              (i) => 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'[
                  Random().nextInt(36)]).join(),
        )) {
    loadProfile();
  }

  Future<void> loadProfile() async {
    emit(state.copyWith(isLoading: true));

    // Mock Firebase call
    await Future.delayed(Duration(milliseconds: 500));

    emit(state.copyWith(
      firstName: "Mock User",
      profileImageUrl: null,
      settingsOptions: _buildSettingsOptions(),
      helpAndContact: _buildHelpOptions(),
      isLoading: false,
    ));
  }

  List<Map<String, dynamic>> _buildSettingsOptions() {
    return [
      {
        "icon": Assets.assetsIconsCard,
        "title": "paymentDelivery".tr(),
        // "onTap": () => Get.to(
        //       () => PaymentDeliveryScreen(),
        //       //PaymentScreen()
        //     ),
      },
      {
        "icon": Assets.assetsIconsMapPoint,
        "title": "addresses".tr(),
        // "onTap": () => Get.to(() => DeliveryAddressUpdateScreen()),
      },
      {
        "icon": Assets.assetsIconsBell,
        "title": "notifications".tr(),
        // "onTap": () => Get.to(() => NotificationSettingsScreen()),
      },
      {
        "icon": Assets.assetsIconsLetter,
        "title": "changeEmail".tr(),
        // "onTap": (BuildContext context) {
        //   showDialog(
        //     context: context,
        //     builder: (context) {
        //       return Dialog(
        //         shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(12),
        //         ),
        //         child: Container(
        //           padding: EdgeInsets.all(16),
        //           child: Column(
        //             mainAxisSize: MainAxisSize.min,
        //             children: [
        //               Text("Change Email",
        //                   style: TextStyle(fontWeight: FontWeight.bold)),
        //               SizedBox(height: 16),
        //               CustomText(text: "You can't change email"),
        //               SizedBox(height: 12),
        //               ElevatedButton(
        //                 onPressed: () {
        //                   // Logic for saving new email
        //                   Navigator.pop(context);
        //                 },
        //                 child: Text("Done"),
        //               )
        //             ],
        //           ),
        //         ),
        //       );
        //     },
        //   );
        // }
      },
      {
        "icon": Assets.assetsIconsPasswordMinimalisticInput,
        "title": "changePassword".tr(),
        // "onTap": (BuildContext context) {
        //   showDialog(
        //     context: context,
        //     builder: (context) {
        //       return Dialog(
        //         shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(12),
        //         ),
        //         child: Container(
        //           padding: EdgeInsets.all(16),
        //           child: Column(
        //             mainAxisSize: MainAxisSize.min,
        //             children: [
        //               Text("Change Password",
        //                   style: TextStyle(fontWeight: FontWeight.bold)),
        //               SizedBox(height: 16),
        //               CustomText(
        //                 text:
        //                     "To change your password, you need to log out first and use the 'Forgot Password' option.",
        //                 textAlign: TextAlign.center,
        //                 fontSize: 14,
        //               ),
        //               SizedBox(height: 12),
        //               Row(
        //                 mainAxisAlignment: MainAxisAlignment.center,
        //                 spacing: 10,
        //                 children: [
        //                   ElevatedButton(
        //                     onPressed: () {
        //                       // Logic for saving new email
        //                       Navigator.pop(context);
        //                     },
        //                     child: Text("Cancel"),
        //                   ),
        //                   ElevatedButton(
        //                     onPressed: () async {
        //                       await StorageService.logout();
        //                       await FirebaseAuth.instance.signOut();
        //                       Get.back(); // Close dialog
        //                       Get.offAll(() =>
        //                           SocialsLoginScreen()); // Navigate to login screen
        //                     },
        //                     child: Text("Logout"),
        //                   )
        //                 ],
        //               ),
        //             ],
        //           ),
        //         ),
        //       );
        //     },
        //   );
        // },
      },
      {
        "icon": Assets.assetsIconsSettings,
        "title": "settings".tr(),
        // "onTap": () => Get.to(() => SettingsScreen()),
      },
    ];
  }

  List<Map<String, dynamic>> _buildHelpOptions() {
    return [
      {
        "icon": Assets.assetsIconsLetterOpened,
        "title": "contactUs".tr(),
        // "screen": (BuildContext context) {
        //   showDialog(
        //     context: context,
        //     builder: (context) {
        //       return AlertDialog(
        //         shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(12),
        //         ),
        //         backgroundColor: Colors.white,
        //         title: CustomText(
        //           text: 'Contact Us',
        //           fontSize: 18,
        //           fontWeight: FontWeight.bold,
        //         ),
        //         content: CustomText(text: 'Havia@gmail.com'),
        //       );
        //     },
        //   );
        // }
      },
      {
        "icon": Assets.assetsIconsDangerTriangle,
        "title": "reportAbuse".tr(),
        // "screen": (BuildContext context) async{
        //     await showDialog(
        //     context: context,
        //     builder: (context) => const CustomReportDialog(),
        //     );
        // }
      },
      {
        "icon": Assets.assetsIconsArchiveCheck,
        "title": "salesTax".tr(),
        // "screen": () => Get.to(() => NotificationScreen())
      },
      {
        "icon": Assets.assetsIconsInfoCircle,
        "title": "privacyPolicy".tr(),
        // "screen": () => Get.to(() => PrivacyPolicy())
      },
      {
        "icon": Assets.assetsIconsFile,
        "title": "termsConditions".tr(),
        // "screen": () => Get.to(() => TermsAndCondition())
      },
    ];
  }
}
