import 'package:dartz/dartz.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/invite_friend/data/datasources/api_service_invite_friend.dart';
import 'package:hvatai/features/invite_friend/data/models/invite_code_response.dart';
import 'package:hvatai/features/invite_friend/domain/repositories/invite_friend_repository.dart';

class InviteFriendRepositoryImpl implements InviteFriendRepository {
  InviteFriendRepositoryImpl(this._apiService);

  final ApiServiceInviteFriend _apiService;

  @override
  Future<Either<String, InviteCodeResponse>> getInviteCode() {
    return executeAndHandleError<InviteCodeResponse>(() async {
      final response = await _apiService.getInviteCode();
      return response;
    });
  }

  @override
  Future<Either<String, void>> applyInviteCode(String inviteCode) {
    return executeAndHandleError<void>(() async {
      await _apiService.applyInviteCode(inviteCode);
    });
  }
}
