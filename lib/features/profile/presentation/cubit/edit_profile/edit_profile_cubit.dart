import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/theme/assets.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/profile/domain/usecases/delete_account_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/update_profile_data_usecase.dart';
import 'package:hvatai/routes/app_routes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
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

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 85,
    );

    if (pickedFile != null) {
      final updatedPhoto = pickedFile.path;
      emit(state.copyWith(user: state.user.copyWith(image: updatedPhoto)));
    }
  }

  Future<void> captureImageFromCamera() async {
    final status = await Permission.camera.status;
    if (!status.isGranted) {
      final result = await Permission.camera.request();
      if (!result.isGranted) {
        print('Camera permission denied');
        return;
      }
    }

    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 85,
    );

    if (pickedFile != null) {
      final updatedPhoto = pickedFile.path;
      emit(state.copyWith(user: state.user.copyWith(image: updatedPhoto)));
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

  void setType(String? type) => emit(state.copyWith(type: type));

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
        "screen": (BuildContext context) {
          context.push(AppRoutes.tradeProfile, extra: {
            'model': state.user,
            'cubit': this,
          });
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

    final result =
        await updateProfileDataUseCase.call(state.toUpdateProfileParams());

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
