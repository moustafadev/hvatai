import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';

import 'package:hvatai/features/auth/domain/usecases/send_otp_usecase.dart';
import 'package:hvatai/routes/app_routes.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.sendOtpUseCase) : super(const LoginState());

  final formKey = GlobalKey<FormState>();
  final SendOtpUseCase sendOtpUseCase;

  void updatePhone(String value) => emit(state.copyWith(phone: value));

  void login(BuildContext context) async {
    if (!formKey.currentState!.validate()) {
      emit(state.copyWith(errorMessage: 'fillAllFields'.tr()));
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final result = await sendOtpUseCase.call(SendOtpParams(phone: state.phone));

    result.fold(
      (failure) {
        emit(state.copyWith(
          isLoading: false,
          errorMessage: failure,
        ));
        showFloatingMessageError('invalidEmailOrPassword'.tr());
      },
      (otpResponse) async {
        emit(state.copyWith(
          isLoading: false,
          successLogin: true,
        ));

        showFloatingMessageSuccess(otpResponse.message.isNotEmpty
            ? otpResponse.message
            : 'OTP sent successfully');

        context.push(AppRoutes.otp, extra: state.phone);
      },
    );
  }
}
