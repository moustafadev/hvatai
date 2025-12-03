import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/auth/domain/usecases/register_usecase.dart';
import 'package:hvatai/routes/app_routes.dart';

part 'registration_cubit.freezed.dart';
part 'registration_state.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  RegistrationCubit(this.registerUseCase)
      : super(RegistrationState(user: UserRegistrationData()));

  final formKey = GlobalKey<FormState>();
  final RegisterUseCase registerUseCase;

  void updateField(String field, String value) {
    final updatedUser = state.user.copyWith(
      firstName: field == 'firstName' ? value : state.user.firstName,
      lastName: field == 'lastName' ? value : state.user.lastName,
      email: field == 'email' ? value : state.user.email,
      password: field == 'password' ? value : state.user.password,
    );

    emit(state.copyWith(
      user: updatedUser,
      emailError: field == 'email' ? null : state.emailError,
    ));
  }

  void toggleObscurePassword() {
    emit(state.copyWith(obscurePassword: !state.obscurePassword));
  }

  void setGender(String? gender) {
    emit(state.copyWith(
      user: state.user.copyWith(gender: gender ?? ''),
    ));
  }

  void setCountry(String? country) {
    emit(state.copyWith(
      user: state.user.copyWith(country: country ?? ''),
    ));
  }

  void toggleAgreed() {
    final updated = state.user.agreedToTerms ?? false;
    emit(state.copyWith(
      user: state.user.copyWith(agreedToTerms: !updated),
    ));
  }

  void toggleAbove18() {
    final updated = state.user.isAbove18 ?? false;
    emit(state.copyWith(
      user: state.user.copyWith(isAbove18: !updated),
    ));
  }

  bool get isFormValid {
    return state.user.agreedToTerms == true &&
        state.user.isAbove18 == true &&
        (state.user.firstName?.isNotEmpty ?? false) &&
        (state.user.lastName?.isNotEmpty ?? false) &&
        (state.user.email?.isNotEmpty ?? false) &&
        (state.user.password?.isNotEmpty ?? false);
  }

  void register(BuildContext context) async {
    if (!formKey.currentState!.validate()) {
      emit(state.copyWith(errorMessage: 'fillAllFields'.tr()));
      return;
    }

    if (!state.user.agreedToTerms! || !state.user.isAbove18!) {
      showFloatingMessageError('agreedToTerms'.tr());
      return;
    }

    emit(state.copyWith(isRegisterLoading: true, errorMessage: ''));

    final result = await registerUseCase.call(
      RegisterParams(userRegistrationData: state.user),
    );

    result.fold(
      (failure) {
        emit(state.copyWith(
          isRegisterLoading: false,
          errorMessage: failure,
        ));
        showFloatingMessageError('somethingWentWrong'.tr());
      },
      (response) {
        emit(state.copyWith(
          isRegisterLoading: false,
          successRegister: true,
          errorMessage: '',
        ));
        final email = response.data?.email ?? state.user.email ?? '';
        context.push(AppRoutes.otp, extra: email);
      },
    );
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) return 'Please enter your email.';
    if (!RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(value)) {
      return 'Please enter a valid email.';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) return 'Please enter a password.';
    if (value.length < 8) return 'At least 8 characters.';
    if (!RegExp(r'(?=.*[A-Z])').hasMatch(value)) return 'Must have uppercase.';
    if (!RegExp(r'(?=.*[a-z])').hasMatch(value)) return 'Must have lowercase.';
    if (!RegExp(r'(?=.*\d)').hasMatch(value)) return 'Must have a digit.';
    if (!RegExp(r'(?=.*[@$!%*?&])').hasMatch(value)) {
      return 'Must have special character.';
    }
    return null;
  }
}
