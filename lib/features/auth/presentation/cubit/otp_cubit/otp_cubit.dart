import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/datasources/local/app_local.dart';
import 'package:hvatai/features/auth/domain/usecases/check_otp_usecase.dart';
import 'package:hvatai/routes/app_routes.dart';

part 'otp_state.dart';
part 'otp_cubit.freezed.dart';

class OtpCubit extends Cubit<OtpState> {
  OtpCubit(
    this.checkOtpUseCase,
    this.appLocal,
  ) : super(const OtpState());

  final CheckOtpUseCase checkOtpUseCase;
  final AppLocal appLocal;

  void initPhone(String phone) {
    emit(state.copyWith(phone: phone));
  }

  void updateCode(String code) {
    emit(state.copyWith(code: code));
  }

  Future<void> verifyOtp(BuildContext context) async {
    if (state.code.length != 4 || state.phone.isEmpty) {
      emit(state.copyWith(errorMessage: 'Please enter a valid code.'));

      showFloatingMessageError('enterValidCode'.tr());

      return;
    }

    emit(state.copyWith(isVerifying: true, errorMessage: ''));

    final params = CheckOtpParams(phone: state.phone, code: state.code);
    final result = await checkOtpUseCase.call(params);

    result.fold(
      (failure) {
        emit(state.copyWith(
          isVerifying: false,
          errorMessage: failure,
        ));
        showFloatingMessageError('codeNotRight'.tr());
      },
      (userData) {
        emit(state.copyWith(
          isVerifying: false,
          success: true,
        ));

        // Save isSetup to AppLocal
        appLocal.saveIsSetup(userData.isSetup);

        showFloatingMessageSuccess(userData.message.isNotEmpty
            ? userData.message
            : 'emailVerified'.tr());

        // Navigation logic based on isSetup and name
        if (userData.isSetup == true) {
          // User has completed setup (has favorite categories)
          context.go(AppRoutes.home);
        } else {
          // User hasn't completed setup
          if (userData.user?.name != null && userData.user!.name.isNotEmpty) {
            // User has a name, go to categories
            context.go(AppRoutes.interests);
          } else {
            // User doesn't have a name, go to name screen
            context.go(AppRoutes.name);
          }
        }
      },
    );
  }
}
