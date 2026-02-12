import 'package:dartz/dartz.dart';
import 'package:hvatai/features/invite_friend/data/models/invite_code_response.dart';

abstract class InviteFriendRepository {
  Future<Either<String, InviteCodeResponse>> getInviteCode();
  Future<Either<String, void>> applyInviteCode(String inviteCode);
}
