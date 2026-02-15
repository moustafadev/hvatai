import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/stream/data/models/subscribed_users/subscribed_users_response.dart';
import 'package:hvatai/features/stream/domain/repositories/stream_repository.dart';

class GetSubscribedUsersUsecase
    implements UseCase<SubscribedUsersResponse, Unit> {
  GetSubscribedUsersUsecase(this._repository);

  final StreamRepository _repository;

  @override
  Future<Either<String, SubscribedUsersResponse>> call(Unit params) {
    return _repository.getSubscribedUsers();
  }
}

