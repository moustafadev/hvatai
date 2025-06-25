import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/features/auth/data/models/user_registration_data.dart';
import 'package:hvatai/routes/app_routes.dart';

part 'registration_cubit.freezed.dart';
part 'registration_state.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  RegistrationCubit() : super(const RegistrationState());

  final formKey = GlobalKey<FormState>();

  void updateField(String field, String value) {
    switch (field) {
      case 'firstName':
        emit(state.copyWith(firstName: value));
        break;
      case 'lastName':
        emit(state.copyWith(lastName: value));
        break;
      case 'email':
        emit(state.copyWith(email: value, emailError: null));
        break;
      case 'password':
        final strength = _evaluatePassword(value);
        emit(state.copyWith(
            password: value,
            passwordStrength: strength.$1,
            passwordStrengthText: strength.$2));
        break;
    }
  }

  void toggleObscurePassword() {
    emit(state.copyWith(obscurePassword: !state.obscurePassword));
  }

  void setGender(String? gender) => emit(state.copyWith(gender: gender));
  void setCountry(String? country) => emit(state.copyWith(country: country));
  void toggleAgreed() =>
      emit(state.copyWith(agreedToTerms: !state.agreedToTerms));
  void toggleAbove18() => emit(state.copyWith(isAbove18: !state.isAbove18));

  void submit(BuildContext context) {
    if (!formKey.currentState!.validate()) return;

    if (!state.agreedToTerms || !state.isAbove18) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("You must agree to terms and be over 18")),
      );
      return;
    }

    final user = state.toUserRegistrationData();

    context.push(AppRoutes.deliveryAddress,
        extra: user); // ✅ GoRouter with extra
  }

  Future<void> checkEmail(String email) async {
    // Stub
    emit(state.copyWith(emailError: null));
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
