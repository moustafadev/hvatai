import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/theme/assets.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/profile/domain/usecases/update_profile_data_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/get_profile_data_usecase.dart';
import 'package:hvatai/routes/app_routes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_state.dart';
part 'edit_profile_cubit.freezed.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit(
    this.updateProfileDataUseCase,
    this.getProfileDataUsecase,
  ) : super(EditProfileState(user: UserRegistrationData())) {
    prefillData();
  }

  final UpdateProfileDataUsecase updateProfileDataUseCase;
  final GetProfileDataUsecase getProfileDataUsecase;

  final firstNameController = TextEditingController();
  final emailController = TextEditingController();
  final newEmailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final lastNameController = TextEditingController();

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
    );

    emit(state.copyWith(
      user: updatedUser,
      changeInfoProfile: _buildChangeInfoProfile(),
    ));

    firstNameController.text = updatedUser.firstName ?? '';
    lastNameController.text = updatedUser.lastName ?? '';
    emailController.text = updatedUser.email ?? '';
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

  void toggleObscurePassword() {
    emit(state.copyWith(obscurePassword: !state.obscurePassword));
  }

  void updateNewField(String field, String value) {
    UserRegistrationData updatedUser;

    switch (field) {
      case 'country':
        updatedUser = state.user.copyWith(country: value);
        break;
      case 'name':
        updatedUser = state.user.copyWith(firstName: value);
        break;
      case 'lastName':
        updatedUser = state.user.copyWith(lastName: value);
        break;
      case 'gender':
        updatedUser = state.user.copyWith(gender: value);
        break;
      case 'email':
        updatedUser = state.user.copyWith(email: value);
        break;
      case 'phone':
        updatedUser = state.user.copyWith(phone: value);
        break;
      case 'image':
        updatedUser = state.user.copyWith(image: value);
        break;
      case 'imageBusiness':
        updatedUser = state.user.copyWith(imageBusiness: value);
        break;
      default:
        updatedUser = state.user;
    }

    emit(state.copyWith(user: updatedUser));
  }

  List<Map<String, dynamic>> _buildChangeInfoProfile() {
    return [
      {
        "icon": Assets.assetsIconsEmail,
        "title": "changeEmail".tr(),
        "screen": (BuildContext context) async {
          context.push(AppRoutes.changeEmail, extra: state.user);
        },
      },
      {
        "icon": Assets.assetsIconsPasswordMinimalisticInput,
        "title": "changePassword".tr(),
        "screen": (BuildContext context) {
          context.push(AppRoutes.changePassword, extra: state.user.email);
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

  Future<void> submit(BuildContext context) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final result =
        await updateProfileDataUseCase.call(state.toUpdateProfileParams());

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, errorMessage: failure));
        showFloatingMessageError(failure);
      },
      (updatedUser) {
        emit(state.copyWith(
          isLoading: false,
          success: true,
          user: updatedUser,
        ));

        firstNameController.text = updatedUser.firstName ?? '';
        lastNameController.text = updatedUser.lastName ?? '';
        newEmailController.text = updatedUser.email ?? '';

        showFloatingMessageSuccess('profileUpdated'.tr());

        context.pop(true);
      },
    );
  }
}
