import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
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
      firstName: field == 'firstName' ? value : state.firstName,
      lastName: field == 'lastName' ? value : state.lastName,
      email: field == 'email' ? value : state.email,
      password: field == 'password' ? value : state.password,
    );

    switch (field) {
      case 'firstName':
        emit(state.copyWith(firstName: value, user: updatedUser));
        break;
      case 'lastName':
        emit(state.copyWith(lastName: value, user: updatedUser));
        break;
      case 'email':
        emit(state.copyWith(email: value, emailError: null, user: updatedUser));
        break;
      case 'password':
        final strength = _evaluatePassword(value);
        emit(state.copyWith(
          password: value,
          passwordStrength: strength.$1,
          passwordStrengthText: strength.$2,
          user: updatedUser,
        ));
        break;
    }
  }

  void toggleObscurePassword() {
    emit(state.copyWith(obscurePassword: !state.obscurePassword));
  }

  void setGender(String? gender) {
    emit(state.copyWith(
      gender: gender,
      user: state.user.copyWith(gender: gender ?? ''),
    ));
  }

  void setCountry(String? country) {
    emit(state.copyWith(
      country: country,
      user: state.user.copyWith(country: country ?? ''),
    ));
  }

  void toggleAgreed() {
    final updated = !state.agreedToTerms;
    emit(state.copyWith(
      agreedToTerms: updated,
      user: state.user.copyWith(agreedToTerms: updated),
    ));
  }

  void toggleAbove18() {
    final updated = !state.isAbove18;
    emit(state.copyWith(
      isAbove18: updated,
      user: state.user.copyWith(isAbove18: updated),
    ));
  }

  void register(BuildContext context) async {
    if (!formKey.currentState!.validate()) {
      emit(state.copyWith(errorMessage: 'Please fill all fields correctly.'));
      return;
    }

    if (!state.agreedToTerms || !state.isAbove18) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("You must agree to terms and be over 18")),
      );
      return;
    }

    emit(state.copyWith(isRegisterLoading: true, errorMessage: ''));

    final result = await registerUseCase.call(
      state.toUserRegistrationData(),
    );

    result.fold(
      (failure) {
        emit(state.copyWith(
          isRegisterLoading: false,
          errorMessage: failure,
        ));
      },
      (_) {
        emit(state.copyWith(
          isRegisterLoading: false,
          successRegister: true,
          errorMessage: '',
        ));
        context.push(AppRoutes.otp, extra: state.user);
      },
    );
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
}
