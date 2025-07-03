import 'package:hvatai/features/auth/domain/usecases/login_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_login_cubit.freezed.dart';
part 'social_login_state.dart';

class SocialLoginCubit extends Cubit<SocialLoginState> {
  SocialLoginCubit(this.loginUseCase) : super(const SocialLoginState());

  final LoginUseCase loginUseCase;

  final phoneController = TextEditingController();

  void login(BuildContext context) async {
    // Implement login logic later
  }

  void signUpWithGoogle() async {
    // Leave empty for now
  }

  void signUpWithEmail() {
    // Leave empty for now
  }

  void signUpWithApple() {
    // Leave empty for now
  }
}
