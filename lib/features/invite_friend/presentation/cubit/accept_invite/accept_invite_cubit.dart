import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'accept_invite_state.dart';
import 'package:hvatai/features/invite_friend/domain/usecases/apply_invite_code_usecase.dart';

class AcceptInviteCubit extends Cubit<AcceptInviteState> {
  AcceptInviteCubit(this._applyInviteCodeUsecase)
      : super(const AcceptInviteState());

  final ApplyInviteCodeUsecase _applyInviteCodeUsecase;

  void updateCode(String code) {
    emit(state.copyWith(
      code: code,
      error: AcceptInviteError.none,
    ));
  }

  Future<void> submitCode({VoidCallback? onSuccess}) async {
    if (state.code.isEmpty) return;

    emit(state.copyWith(isLoading: true, error: AcceptInviteError.none));

    final result = await _applyInviteCodeUsecase(
      ApplyInviteCodeParams(inviteCode: state.code),
    );

    result.fold(
      (failure) {
        debugPrint('Error applying invite code: $failure');
        // Map API errors to appropriate error states
        if (failure.toLowerCase().contains('not found') ||
            failure.toLowerCase().contains('invalid')) {
          emit(state.copyWith(
            isLoading: false,
            error: AcceptInviteError.codeNotFound,
          ));
        } else if (failure.toLowerCase().contains('already') ||
            failure.toLowerCase().contains('used')) {
          emit(state.copyWith(
            isLoading: false,
            error: AcceptInviteError.codeAlreadyUsed,
          ));
        } else {
          emit(state.copyWith(
            isLoading: false,
            error: AcceptInviteError.codeNotFound,
          ));
        }
      },
      (_) {
        emit(state.copyWith(
          isLoading: false,
          isSuccess: true,
        ));
        onSuccess?.call();
      },
    );
  }

  void clearError() {
    emit(state.copyWith(error: AcceptInviteError.none));
  }

  void reset() {
    emit(const AcceptInviteState());
  }
}
