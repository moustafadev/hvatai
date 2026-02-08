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
  final phoneController = TextEditingController();

  void onChangePhone(String phone) {
    phoneController.text = _formattingPhone(phone);
    emit(state.copyWith(phone: _formattingPhone(phone)));
  }

  String _formattingPhone(String text) {
    text = text.replaceAll(RegExp(r'\D'), '');
    if (text.isNotEmpty) {
      String phone = '';
      if (['7', '8', '9'].contains(text[0])) {
        if (text[0] == '9') {
          text = '7$text';
        }
        String firstSymbols = (text[0] == '8') ? '8' : '+7';
        phone = '$firstSymbols ';
        if (text.length > 1) {
          phone += '(${text.substring(1, (text.length < 4) ? text.length : 4)}';
        }
        if (text.length >= 5) {
          phone +=
              ') ${text.substring(4, (text.length < 7) ? text.length : 7)}';
        }
        if (text.length >= 8) {
          phone += '-${text.substring(7, (text.length < 9) ? text.length : 9)}';
        }
        if (text.length >= 10) {
          phone +=
              '-${text.substring(9, (text.length < 11) ? text.length : 11)}';
        }
        return phone;
      } else {
        return '+7$text';
      }
    }
    return '';
  }

  String getClearPhone() {
    if (phoneController.text.isEmpty) {
      return '';
    }

    return '7' +
        phoneController.text.replaceAll(RegExp(r'\D'), '').substring(
            1,
            (phoneController.text.replaceAll(RegExp(r'\D'), '').length >= 11)
                ? 11
                : phoneController.text.replaceAll(RegExp(r'\D'), '').length);
  }

  void updatePhone(String value) {
    onChangePhone(value);
  }

  @override
  Future<void> close() {
    phoneController.dispose();
    return super.close();
  }

  void login(BuildContext context) async {
    if (!formKey.currentState!.validate()) {
      emit(state.copyWith(errorMessage: 'fillAllFields'.tr()));
      return;
    }

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

        showFloatingMessageSuccess(otpResponse.message.isNotEmpty
            ? otpResponse.message
            : 'OTP sent successfully');

        context.push(AppRoutes.otp, extra: clearPhone);
      },
    );
  }
}
