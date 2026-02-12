import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/invite_friend/domain/repositories/invite_friend_repository.dart';

class ApplyInviteCodeParams {
  final String inviteCode;

  const ApplyInviteCodeParams({required this.inviteCode});
}

class ApplyInviteCodeUsecase
    implements UseCase<void, ApplyInviteCodeParams> {
  const ApplyInviteCodeUsecase(this._repository);

  final InviteFriendRepository _repository;

  @override
  Future<Either<String, void>> call(ApplyInviteCodeParams params) {
    return _repository.applyInviteCode(params.inviteCode);
  }
}
