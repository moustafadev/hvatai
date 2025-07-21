import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/features/auth/data/models/user_registration_data.dart';
import 'package:hvatai/features/auth/domain/usecases/check_otp_usecase.dart';
import 'package:hvatai/routes/app_routes.dart';

part 'otp_state.dart';
part 'otp_cubit.freezed.dart';

class OtpCubit extends Cubit<OtpState> {
  OtpCubit(this.checkOtpUseCase, {required UserRegistrationData user})
      : super(OtpState(user: user)) {
    debugPrint('User data in OtpCubit: ${user.toJson()}');
  }

  final CheckOtpUseCase checkOtpUseCase;

  void updateCode(String code) {
    emit(state.copyWith(code: code));
  }

  Future<void> verifyOtp(BuildContext context) async {
    if (state.code.length != 4) {
      emit(state.copyWith(errorMessage: 'Please enter a valid code.'));
      return;
    }

    final currentUser = state.user;

    emit(state.copyWith(isVerifying: true, errorMessage: ''));

    final params = CheckOtpParams(email: currentUser.email!, code: state.code);
    final result = await checkOtpUseCase.call(params);

    result.fold(
      (failure) {
        emit(state.copyWith(
          isVerifying: false,
          errorMessage: failure,
        ));
      },
      (userData) {
        final updatedUser = currentUser.copyWith(
          token: userData.token,
        );

        emit(state.copyWith(
          isVerifying: false,
          success: true,
          user: updatedUser,
        ));

        debugPrint('Navigating to Delivery with: ${updatedUser.toJson()}');
        context.push(AppRoutes.deliveryAddress, extra: updatedUser);
      },
    );
  }
}
