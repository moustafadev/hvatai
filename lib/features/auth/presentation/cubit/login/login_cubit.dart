import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/routes/app_routes.dart';
// import 'package:firebase_auth/firebase_auth.dart'; // to add later
// import 'package:cloud_firestore/cloud_firestore.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());

  final formKey = GlobalKey<FormState>();

  void updateEmail(String value) => emit(state.copyWith(email: value));
  void updatePassword(String value) => emit(state.copyWith(password: value));
  void togglePasswordVisibility() =>
      emit(state.copyWith(obscurePassword: !state.obscurePassword));

  Future<void> login(BuildContext context) async {
    if (!formKey.currentState!.validate()) return;
    emit(state.copyWith(isLoading: true));

    try {
      // TODO: Replace with Firebase logic
      debugPrint('Logging in with ${state.email} / ${state.password}');

      // await Future.delayed(const Duration(seconds: 1)); // mock

      context.push(AppRoutes.verificationCode);
    } catch (e) {
      debugPrint('Login failed: $e');
    }

    emit(state.copyWith(isLoading: false));
  }
}
