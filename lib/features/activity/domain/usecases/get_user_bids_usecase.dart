import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/activity/data/models/user_bids_response/user_bids_response.dart';
import 'package:hvatai/features/activity/domain/repositories/activity_repository.dart';

class GetUserBidsUsecase
    implements UseCase<UserBidsResponse, Unit> {
  final ActivityRepository _repository;

  GetUserBidsUsecase(this._repository);

  @override
  Future<Either<String, UserBidsResponse>> call(Unit params) {
    return _repository.getUserBids();
  }
}

