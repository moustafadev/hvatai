import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/change_password/domain/usecases/change_password_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'change_password_state.dart';
part 'change_password_cubit.freezed.dart';

class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  ChangePasswordCubit(
    this.changePasswordUsecase,
  ) : super(ChangePasswordState(user: UserRegistrationData()));

  final ChangePasswordUsecase changePasswordUsecase;

  bool isDisabled() {
    return (state.user.password == null || state.user.password!.isEmpty) ||
        (state.user.passwordConfirmation == null ||
            state.user.passwordConfirmation!.isEmpty) ||
        (state.user.currentPassword == null ||
            state.user.currentPassword!.isEmpty);
  }

  void toggleObscurePassword() {
    emit(state.copyWith(obscurePassword: !state.obscurePassword));
  }

  void toggleObscureNewPassword() {
    emit(state.copyWith(obscureNewPassword: !state.obscureNewPassword));
  }

  void toggleObscureConfirmPassword() {
    emit(state.copyWith(obscureConfirmPassword: !state.obscureConfirmPassword));
  }

  String? validateConfirmPassword(String? value, String originalPassword) {
    if (value == null || value.isEmpty) return 'Please confirm your password';
    if (value != originalPassword) return 'Passwords do not match';
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

  void updateField(String field, String value) {
    final currentUser = state.user;
    UserRegistrationData updatedUser;

    switch (field) {
      case 'password':
        updatedUser = currentUser.copyWith(password: value);
        break;
      case 'passwordConfirmation':
        updatedUser = currentUser.copyWith(passwordConfirmation: value);
        break;
      case 'currentPassword':
        updatedUser = currentUser.copyWith(currentPassword: value);
        break;
      default:
        updatedUser = currentUser;
    }

    emit(state.copyWith(user: updatedUser));
  }

  Future<void> submit(BuildContext context) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final result = await changePasswordUsecase.call(
      ChangePasswordParams(userRegistrationData: state.user),
    );
    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, errorMessage: failure));
        if (state.user.password != state.user.passwordConfirmation) {
          showFloatingMessageError('Passwords do not match'.tr());
        } else {
          showFloatingMessageError(
              'Current password does not match with old password'.tr());
        }
      },
      (updatedUser) {
        emit(state.copyWith(
          isLoading: false,
          success: true,
          user: updatedUser,
        ));

        context.pop(updatedUser);
      },
    );
  }
}
