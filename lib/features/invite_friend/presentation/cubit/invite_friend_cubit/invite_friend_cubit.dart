import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/invite_friend/domain/usecases/get_invite_code_usecase.dart';

part 'invite_friend_cubit.freezed.dart';
part 'invite_friend_state.dart';

class InviteFriendCubit extends Cubit<InviteFriendState> {
  InviteFriendCubit(this._getInviteCodeUsecase)
      : super(const InviteFriendState());

  final GetInviteCodeUsecase _getInviteCodeUsecase;

  Future<void> loadInviteCode() async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));
    final result = await _getInviteCodeUsecase(unit);
    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          errorMessage: failure,
        ),
      ),
      (response) {
        emit(
          state.copyWith(
            isLoading: false,
            inviteCode: response.data?.inviteCode ?? '',
            joinedUsersCount: response.data?.joinedUsersCount ?? 0,
            errorMessage: '',
          ),
        );
      },
    );
  }
}
