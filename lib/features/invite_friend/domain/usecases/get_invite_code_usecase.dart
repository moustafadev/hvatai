import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/invite_friend/data/models/invite_code_response.dart';
import 'package:hvatai/features/invite_friend/domain/repositories/invite_friend_repository.dart';

class GetInviteCodeUsecase implements UseCase<InviteCodeResponse, Unit> {
  const GetInviteCodeUsecase(this._repository);

  final InviteFriendRepository _repository;

  @override
  Future<Either<String, InviteCodeResponse>> call(Unit params) {
    return _repository.getInviteCode();
  }
}
