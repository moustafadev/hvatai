import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/features/auth/domain/usecases/login_usecase.dart';
import 'package:hvatai/routes/app_routes.dart';
// import 'package:firebase_auth/firebase_auth.dart'; // to add later
// import 'package:cloud_firestore/cloud_firestore.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginUseCase) : super(const LoginState());

  final formKey = GlobalKey<FormState>();

  final LoginUseCase loginUseCase;

  void updateEmail(String value) => emit(state.copyWith(email: value));
  void updatePassword(String value) => emit(state.copyWith(password: value));
  void togglePasswordVisibility() =>
      emit(state.copyWith(obscurePassword: !state.obscurePassword));

  void login(BuildContext context) async {
    if (!formKey.currentState!.validate()) {
      emit(state.copyWith(errorMessage: 'Please fill all fields correctly.'));
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final loginData = state.toUserLoginData();

    final result = await loginUseCase.call(loginData);

    result.fold(
      (failure) {
        emit(state.copyWith(
          isLoading: false,
          errorMessage: failure,
        ));
      },
      (_) {
        emit(state.copyWith(
          isLoading: false,
          successLogin: true,
        ));
        context.push(AppRoutes.home);
      },
    );
  }
}
