import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/theme/assets.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/profile/domain/usecases/delete_account_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/update_profile_data_usecase.dart';

import 'package:hvatai/routes/app_routes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'edit_profile_state.dart';
part 'edit_profile_cubit.freezed.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit(
    this.deleteAccountUseCase,
    this.updateProfileDataUseCase,
  ) : super(EditProfileState(user: UserRegistrationData()));

  final UpdateProfileDataUsecase updateProfileDataUseCase;
  final DeleteAccountUsecase deleteAccountUseCase;

  void initProfileModel(UserRegistrationData user) {
    emit(state.copyWith(user: user));
  }

  void prefillData() {
    final userData = state.user;

    final updatedUser = state.user.copyWith(
      firstName: userData.firstName ?? '',
      lastName: userData.lastName ?? '',
      email: userData.email ?? '',
      phone: userData.phone ?? '',
      country: userData.country ?? '',
      gender: _normalizeGender(userData.gender),
      role: userData.role,
      image: userData.image ?? '',
    );

    emit(state.copyWith(
      user: updatedUser,
      changeInfoProfile: _buildChangeInfoProfile(),
      settingsOptions: _buildSettingsOptions(),
    ));
  }

  List<Map<String, dynamic>> _buildSettingsOptions() {
    return [
      {
        "icon": Assets.assetsIconsCard,
        "title": "paymentMethod".tr(),
        "screen": (BuildContext context) {
          context.push(AppRoutes.payments);
        },
      },
      {
        "icon": Assets.assetsIconsMapPoint,
        "title": "addresses".tr(),
        "screen": (BuildContext context) {
          context.push(AppRoutes.newAddress);
        },
      },
    ];
  }

  void setNewGender(String? gender) {
    final normalizedGender = _normalizeGender(gender);
    final updatedUser = state.user.copyWith(gender: normalizedGender);
    emit(state.copyWith(user: updatedUser));
  }

  String? _normalizeGender(String? gender) {
    if (gender == null || gender.isEmpty) return null;
    final lowerGender = gender.toLowerCase();
    switch (lowerGender) {
      case 'male':
      case 'm':
        return 'male';
      case 'female':
      case 'f':
        return 'female';
      case 'other':
      case 'o':
        return 'other';
      default:
        return null;
    }
  }

  void toggleStreamsFromSubscriptions() {
    emit(state.copyWith(
      streamsFromSubscriptions: !state.streamsFromSubscriptions,
    ));
  }

  void toggleStreamsISaved() {
    emit(state.copyWith(
      streamsISaved: !state.streamsISaved,
    ));
  }

  void updateUserImages(String imagePaths) {
    emit(state.copyWith(user: state.user.copyWith(image: imagePaths)));
  }

  String? validateConfirmPassword(String? value, String originalPassword) {
    if (value == null || value.isEmpty) return 'Please confirm your password';
    if (value != originalPassword) return 'Passwords do not match';
    return null;
  }

  void toggleRecommendedStreams() {
    emit(state.copyWith(
      recommendedStreams: !state.recommendedStreams,
    ));
  }

  void toggleNewSubscriber() {
    emit(state.copyWith(
      newSubscriber: !state.newSubscriber,
    ));
  }

  void toggleBookmarksFromStreams() {
    emit(state.copyWith(
      bookmarksFromStreams: !state.bookmarksFromStreams,
    ));
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

  void toggleObscurePassword() {
    emit(state.copyWith(obscurePassword: !state.obscurePassword));
  }

  void updateNewField(String field, String value) {
    final currentUser = state.user;
    UserRegistrationData updatedUser;

    switch (field) {
      case 'country':
        updatedUser = currentUser.copyWith(country: value);
        break;
      case 'name':
        updatedUser = currentUser.copyWith(firstName: value);
        break;
      case 'lastName':
        updatedUser = currentUser.copyWith(lastName: value);
        break;
      case 'gender':
        updatedUser = currentUser.copyWith(gender: _normalizeGender(value));
        break;
      case 'email':
        updatedUser = currentUser.copyWith(email: value);
        break;
      case 'phone':
        updatedUser = currentUser.copyWith(phone: value);
        break;
      case 'role':
        updatedUser = currentUser.copyWith(role: value);
        break;
      default:
        updatedUser = currentUser;
    }

    emit(state.copyWith(user: updatedUser));
  }

  void updateUserData(UserRegistrationData user) {
    emit(state.copyWith(
      user: user,
      changeInfoProfile: _buildChangeInfoProfile(),
    ));
  }

  void setPendingEmail(String? email) {
    emit(state.copyWith(pendingEmail: email));
  }

  Future<void> sendEmailVerification(BuildContext context) async {
    final email = state.pendingEmail ?? state.user.email;
    if (email == null || email.isEmpty) {
      showFloatingMessageError('pleaseEnterEmail'.tr());
      return;
    }

    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email)) {
      showFloatingMessageError('pleaseEnterValidEmail'.tr());
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: ''));

    // TODO: Call backend API to send verification email
    // For now, simulate the API call
    await Future.delayed(const Duration(seconds: 1));

    emit(state.copyWith(
      isLoading: false,
      emailVerificationSent: true,
      pendingEmail: email,
    ));
  }

  void resetEmailVerification() {
    emit(state.copyWith(
      emailVerificationSent: false,
      pendingEmail: null,
    ));
  }

  List<Map<String, dynamic>> _buildChangeInfoProfile() {
    final hasEmail = state.user.email != null && state.user.email!.isNotEmpty;
    final isEmailVerified = state.user.emailVerifiedAt != null &&
        state.user.emailVerifiedAt!.isNotEmpty;
    return [
      {
        "icon": Assets.assetsIconsEmail,
        "title": hasEmail ? (state.user.email ?? '') : "Добавить E-Mail",
        "isEmailVerified": isEmailVerified,
        "screen": (BuildContext context) async {
          final updatedUser = await context
              .push<UserRegistrationData>(AppRoutes.changeEmail, extra: {
            'model': state.user,
            'cubit': this,
          });

          if (updatedUser != null) {
            updateUserData(updatedUser);
          }
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

  Future<void> deleteAccount(BuildContext context) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final result = await deleteAccountUseCase.call(unit);

    result.fold(
      (failure) {
        emit(
            state.copyWith(isLoading: false, errorMessage: failure.toString()));
        showFloatingMessageError('somethingWentWrong'.tr());
      },
      (_) {
        emit(state.copyWith(isLoading: false));
        context.go(AppRoutes.socialLogin);

        showFloatingMessageSuccess('accountDeleted'.tr());
      },
    );
  }

  Future<void> submit(BuildContext context) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final result = await updateProfileDataUseCase.call(
      UpdateProfileParams(userRegistrationData: state.user),
    );
    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, errorMessage: failure));
        showFloatingMessageError('somethingWentWrong'.tr());
      },
      (updatedUser) {
        emit(state.copyWith(
          isLoading: false,
          success: true,
          user: updatedUser,
        ));

        showFloatingMessageSuccess('profileUpdated'.tr());

        context.pop(updatedUser);
      },
    );
  }
}
