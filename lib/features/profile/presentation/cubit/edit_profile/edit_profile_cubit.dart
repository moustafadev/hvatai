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
import 'package:hvatai/features/profile/domain/usecases/update_profile_type_usecase.dart';

import 'package:hvatai/routes/app_routes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'edit_profile_state.dart';
part 'edit_profile_cubit.freezed.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit(this.deleteAccountUseCase, this.updateProfileDataUseCase,
      this.updateProfileTypeUsecase)
      : super(EditProfileState(user: UserRegistrationData()));

  final UpdateProfileDataUsecase updateProfileDataUseCase;
  final DeleteAccountUsecase deleteAccountUseCase;
  final UpdateProfileTypeUsecase updateProfileTypeUsecase;

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
      gender: userData.gender ?? '',
      sms: userData.sms,
      push: userData.push,
      sendEmail: userData.sendEmail,
      role: userData.role,
      image: userData.image ?? '',
    );

    emit(state.copyWith(
      user: updatedUser,
      changeInfoProfile: _buildChangeInfoProfile(),
    ));
  }

  void setNewGender(String? gender) {
    final updatedUser = state.user.copyWith(gender: gender);
    emit(state.copyWith(user: updatedUser));
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
        updatedUser = currentUser.copyWith(gender: value);
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
    emit(state.copyWith(user: user));
  }

  List<Map<String, dynamic>> _buildChangeInfoProfile() {
    return [
      {
        "icon": Assets.assetsIconsEmail,
        "title": "changeEmail".tr(),
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
        "icon": Assets.assetsIconsPasswordMinimalisticInput,
        "title": "changePassword".tr(),
        "screen": (BuildContext context) {
          context.push(AppRoutes.changePassword, extra: state.user);
        },
      },
      {
        "icon": Assets.assetsIconsProfileType,
        "title": "profileType".tr(),
        "screen": (BuildContext context) async {
          final updatedUser = await context
              .push<UserRegistrationData>(AppRoutes.tradeProfile, extra: {
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

  Future<void> updateProfileType(BuildContext context) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final result = await updateProfileTypeUsecase.call(unit);

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
        context.go(AppRoutes.profile, extra: updatedUser);
        showFloatingMessageSuccess('profileUpdated'.tr());
      },
    );
  }

  /*  Future<FormData> _prepareProductFormData(ProductModel product) async {
    final dataMap = Map<String, dynamic>.from(product.toJson());
    dataMap['delivery_available'] = product.deliveryAvailable ? 1 : 0;
    dataMap['status'] = product.status != null ? 1 : 0;
    dataMap['self_pickup'] = product.selfPickup ? 1 : 0;

    final variantsJson = product.variants.map((v) => v.toJson()).toList();
    dataMap['variants'] = variantsJson;

    final formData = FormData.fromMap(dataMap);

    if (product.productPictures != null &&
        product.productPictures!.isNotEmpty) {
      for (int i = 0; i < product.productPictures!.length; i++) {
        final file = await _prepareImageFile(product.productPictures![i]);
        if (file != null) {
          formData.files.add(MapEntry("product_pictures[$i]", file));
        }
      }
    }

    return formData;
  } */
  Future<FormData> _prepareProfileFormData(UserRegistrationData params) async {
    final dataMap = Map<String, dynamic>.from(params.toJson());
    dataMap['terms_agreement'] = params.agreedToTerms ?? false ? 1 : 0;
    dataMap['age_confirmation'] = params.isAbove18 ?? false ? 1 : 0;
    dataMap['phone'] = "043535345";
    final formData = FormData.fromMap(dataMap);

    if (params.image != null && params.image!.isNotEmpty) {
      final file = await _prepareImageFile(params.image);
      if (file != null) {
        formData.files.add(MapEntry("image", file));
      }
    }

    return formData;
  }

  Future<File> compressImage(File file, {int quality = 70}) async {
    final targetPath = file.absolute.path.replaceAll('.jpg', '_compressed.jpg');

    final result = await FlutterImageCompress.compressAndGetFile(
      file.absolute.path,
      targetPath,
      quality: quality,
      minWidth: 1080,
      minHeight: 1080,
    );
    return file;
  }

  Future<MultipartFile?> _prepareImageFile(String? imagePath) async {
    if (imagePath == null || imagePath.isEmpty) return null;

    File file = File(imagePath);
    if (!await file.exists()) return null;

    int quality = 85;
    while (await file.length() > 1 * 1024 * 1024 && quality > 30) {
      file = await compressImage(file, quality: quality);
      quality -= 15;
    }

    if (await file.length() > 2 * 1024 * 1024) {
      file = await compressImage(file);
      if (await file.length() > 2 * 1024 * 1024) {
        throw Exception;
      }
    }

    return MultipartFile.fromFile(file.path,
        filename: file.path.split('/').last);
  }

  Future<void> submit(BuildContext context) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final formData = await _prepareProfileFormData(state.user);

    final result = await updateProfileDataUseCase.call(
      UpdateProfileParams(formData: formData),
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
