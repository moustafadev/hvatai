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

  final SendOtpUseCase sendOtpUseCase;

  void onChangePhone(String phone) {
    emit(state.copyWith(phone: phone));
  }

  String getClearPhone() {
    if (state.phone.isEmpty) {
      return '';
    }

    return '7${state.phone.replaceAll(RegExp(r'\D'), '').substring(1, (state.phone.replaceAll(RegExp(r'\D'), '').length >= 11) ? 11 : state.phone.replaceAll(RegExp(r'\D'), '').length)}';
  }

  void login(BuildContext context) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final clearPhone = getClearPhone();
    final result = await sendOtpUseCase.call(SendOtpParams(phone: clearPhone));

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

        context.push(AppRoutes.otp, extra: clearPhone);
      },
    );
  }
}
