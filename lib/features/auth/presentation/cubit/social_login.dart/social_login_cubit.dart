import 'package:dartz/dartz.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/features/auth/domain/usecases/login_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/auth/domain/usecases/login_with_google_usecase.dart';
import 'package:hvatai/routes/app_routes.dart';

part 'social_login_cubit.freezed.dart';
part 'social_login_state.dart';

class SocialLoginCubit extends Cubit<SocialLoginState> {
  SocialLoginCubit(this.loginWithGoogleUseCase)
      : super(const SocialLoginState());

  final LoginWithGoogleUseCase loginWithGoogleUseCase;

  final phoneController = TextEditingController();

  void signUpWithGoogle(BuildContext context) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    await loginWithGoogleUseCase.call(unit).then((result) {
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
    });
  }

  void signUpWithEmail() {
    // Leave empty for now
  }

  void signUpWithApple() {
    // Leave empty for now
  }
}
