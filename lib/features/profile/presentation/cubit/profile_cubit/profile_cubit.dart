import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/theme/assets.dart';
import 'package:hvatai/features/profile/data/model/user_profile_model.dart';
import 'package:hvatai/features/profile/domain/usecases/get_profile_data_usecase.dart';
import 'package:hvatai/routes/app_routes.dart';
part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this.getProfileDataUseCase)
      : super(ProfileState(
          userProfileModel: UserProfileModel(),
          uid: 10000 + Random().nextInt(90000),
          channelId: List.generate(
              5,
              (i) => 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'[
                  Random().nextInt(36)]).join(),
        )) {
    loadProfile();
  }
  GetProfileDataUsecase getProfileDataUseCase;
  Future<void> reloadProfile() async {
    await getProfile();
  }

  Future<void> getProfile() async {
    emit(state.copyWith(
      isLoading: true,
      errorMessage: '',
    ));

    final result = await getProfileDataUseCase.call(unit);

    result.fold((failure) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: failure,
      ));
    }, (userProfile) {
      emit(state.copyWith(
        isLoading: false,
        userProfileModel: userProfile,
      ));
    });
  }

// Notification Toggles - Live Stream
  void toggleStreamsFromSubscriptions() {
    emit(state.copyWith(
      streamsFromSubscriptions: !state.streamsFromSubscriptions,
    ));
  }

  void setGender(String? gender) => emit(state.copyWith(gender: gender!));

  void toggleStreamsISaved() {
    emit(state.copyWith(
      streamsISaved: !state.streamsISaved,
    ));
  }

  void updateField(String field, String value) {
    switch (field) {
      case 'country':
        emit(state.copyWith(country: value));
        break;
      case 'password':
        final strength = _evaluatePassword(value);
        emit(state.copyWith(
          password: value,
          passwordStrength: strength.$1,
          passwordStrengthText: strength.$2,
        ));
        break;
      case 'confirmPassword':
        emit(state.copyWith(confirmPassword: value));
        break;
    }
  }

  String? validateConfirmPassword(String? value, String originalPassword) {
    if (value == null || value.isEmpty) return 'Please confirm your password';
    if (value != originalPassword) return 'Passwords do not match';
    return null;
  }

  (double, String) _evaluatePassword(String password) {
    double strength = 0.0;
    String label = 'Weak';

    if (password.isEmpty) return (0.0, '');
    if (password.length < 6) return (0.2, 'Weak');
    if (password.length < 8) return (0.4, 'Fair');

    final hasLetters = RegExp(r'[A-Za-z]').hasMatch(password);
    final hasDigits = RegExp(r'\d').hasMatch(password);
    final hasSpecial = RegExp(r'[@$!%*?&]').hasMatch(password);
    final hasUpper = RegExp(r'[A-Z]').hasMatch(password);
    final hasLower = RegExp(r'[a-z]').hasMatch(password);

    if (hasLetters && hasDigits) strength = 0.6;
    if (hasLetters && hasDigits && hasSpecial) strength = 0.8;
    if (password.length >= 10 &&
        hasUpper &&
        hasLower &&
        hasDigits &&
        hasSpecial) strength = 1.0;

    if (strength == 0.6)
      label = 'Good';
    else if (strength == 0.8)
      label = 'Very Good';
    else if (strength == 1.0) label = 'Strong';

    return (strength, label);
  }

  void toggleRecommendedStreams() {
    emit(state.copyWith(
      recommendedStreams: !state.recommendedStreams,
    ));
  }

// Notification Toggles - Search Notifications
  void toggleNewSubscriber() {
    emit(state.copyWith(
      newSubscriber: !state.newSubscriber,
    ));
  }

// Notification Toggles - Seller Bookmark
  void toggleBookmarksFromStreams() {
    emit(state.copyWith(
      bookmarksFromStreams: !state.bookmarksFromStreams,
    ));
  }

// Toggle All Notifications
  void toggleSelectAll() {
    final newValue = !state.isAllSelected;

    emit(state.copyWith(
      isAllSelected: newValue,
      streamsFromSubscriptions: newValue,
      streamsISaved: newValue,
      recommendedStreams: newValue,
      newSubscriber: newValue,
      bookmarksFromStreams: newValue,
    ));
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
      changeInfoProfile: _buildChangeInfoProfile(),
      streamerOptions: _buildTradeStreamerOptions(),
      isLoading: false,
    ));
  }

  List<Map<String, dynamic>> _buildSettingsOptions() {
    return [
      {
        "icon": Assets.assetsIconsMessage,
        "title": "chat".tr(),
        // "onTap": () => Get.to(
        //       () => PaymentDeliveryScreen(),
        //       //PaymentScreen()
        //     ),
      },
      {
        "icon": Assets.assetsIconsCard,
        "title": "paymentMethod".tr(),
        "screen": (BuildContext context) {
          context.push(
            AppRoutes.payments,
          );
        },
      },
      {
        "icon": Assets.assetsIconsMapPoint,
        "title": "addresses".tr(),
        "screen": (BuildContext context) {
          context.push(
            AppRoutes.newAddress,
          );
        },
        // "onTap": () => Get.to(() => DeliveryAddressUpdateScreen()),
      },
      // {
      //   "icon": Assets.assetsIconsBell,
      //   "title": "notifications".tr(),
      //   "onTap": (context) =>
      //       GoRouter.of(context).push(AppRoutes.notificationSettings),
      // },
      // {
      //   "icon": Assets.assetsIconsLetter,
      //   "title": "changeEmail".tr(),
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
      // },
      // {
      //   "icon": Assets.assetsIconsPasswordMinimalisticInput,
      //   "title": "changePassword".tr(),
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
      // },
      // {
      //   "icon": Assets.assetsIconsSettings,
      //   "title": "settings".tr(),
      //   // "onTap": () => Get.to(() => SettingsScreen()),
      // },
    ];
  }

  void setType(String? type) => emit(state.copyWith(type: type));

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
      // {
      //   "icon": Assets.assetsIconsArchiveCheck,
      //   "title": "salesTax".tr(),
      //   // "screen": () => Get.to(() => NotificationScreen())
      // },
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

  void toggleObscurePassword() {
    emit(state.copyWith(obscurePassword: !state.obscurePassword));
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) return 'Please enter your email.';
    if (!RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(value))
      return 'Please enter a valid email.';
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) return 'Please enter a password.';
    if (value.length < 8) return 'At least 8 characters.';
    if (!RegExp(r'(?=.*[A-Z])').hasMatch(value)) return 'Must have uppercase.';
    if (!RegExp(r'(?=.*[a-z])').hasMatch(value)) return 'Must have lowercase.';
    if (!RegExp(r'(?=.*\d)').hasMatch(value)) return 'Must have a digit.';
    if (!RegExp(r'(?=.*[@$!%*?&])').hasMatch(value))
      return 'Must have special character.';
    return null;
  }

  // ignore: unused_element
  List<Map<String, dynamic>> _buildChangeInfoProfile() {
    return [
      {
        "icon": Assets.assetsIconsEmail,
        "title": "changeEmail".tr(),
        "screen": (BuildContext context) {
          context.push(
            AppRoutes.changeEmail,
          );
        },
      },
      {
        "icon": Assets.assetsIconsPasswordMinimalisticInput,
        "title": "changePassword".tr(),
        "screen": (BuildContext context) {
          context.push(
            AppRoutes.changePassword,
          );
        },
      },
      {
        "icon": Assets.assetsIconsProfileType,
        "title": "profileType".tr(),
        "screen": (BuildContext context) {
          context.push(AppRoutes.tradeProfile);
        },
      },
      {
        "icon": Assets.assetsIconsBell,
        "title": "settingUpNotifications".tr(),
        "screen": (BuildContext context) {
          context.push(AppRoutes.notificationSettings);
        },
      },
    ];
  }

  // ignore: unused_element
  List<Map<String, dynamic>> _buildTradeStreamerOptions() {
    return [
      {
        "icon": Assets.assetsIconsUsersGroupRoundedIcon,
        //"title": "Invite a friend and get up to 10,000 ₽\nBalance: 300 ₽".tr(),
      },
      {
        "icon": Assets.assetsIconsStar2,
        "title": "My reviews".tr(),
      },
      {
        "icon": Assets.assetsIconsMessage,
        "title": "Chat".tr(),
      },
      {
        "icon": Assets.assetsImagesAnalyticsIcon,
        "title": "Analytics".tr(),
      },
      {
        "icon": Assets.assetsImagesDeliveryIcon,
        "title": "Delivery settings".tr(),
      },
    ];
  }
}
