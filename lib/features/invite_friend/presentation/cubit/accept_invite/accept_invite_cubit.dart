import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'accept_invite_state.dart';

class AcceptInviteCubit extends Cubit<AcceptInviteState> {
  AcceptInviteCubit() : super(const AcceptInviteState());

  void updateCode(String code) {
    emit(state.copyWith(
      code: code,
      error: AcceptInviteError.none,
    ));
  }

  Future<void> submitCode({VoidCallback? onSuccess}) async {
    if (state.code.isEmpty) return;

    emit(state.copyWith(isLoading: true, error: AcceptInviteError.none));

    try {
      // TODO: Replace with actual API call
      await Future.delayed(const Duration(seconds: 1));

      // Simulate validation - in real implementation this would come from API
      // For demo purposes, we'll accept codes that are not "invalid" or "used"
      if (state.code.toLowerCase() == 'invalid') {
        emit(state.copyWith(
          isLoading: false,
          error: AcceptInviteError.codeNotFound,
        ));
        return;
      }

      if (state.code.toLowerCase() == 'used') {
        emit(state.copyWith(
          isLoading: false,
          error: AcceptInviteError.codeAlreadyUsed,
        ));
        return;
      }

      emit(state.copyWith(
        isLoading: false,
        isSuccess: true,
      ));
      onSuccess?.call();
    } catch (e) {
      debugPrint('Error submitting code: $e');
      emit(state.copyWith(
        isLoading: false,
        error: AcceptInviteError.codeNotFound,
      ));
    }
  }

  void clearError() {
    emit(state.copyWith(error: AcceptInviteError.none));
  }

  void reset() {
    emit(const AcceptInviteState());
  }
}
