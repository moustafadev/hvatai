import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/awards/domain/repositories/awards_repository.dart';

class SendRewardParams {
  final int userId;
  final String amount;
  final String message;
  final String paymentMethod;

  const SendRewardParams({
    required this.userId,
    required this.amount,
    required this.message,
    required this.paymentMethod,
  });
}

class SendRewardUsecase implements UseCase<Unit, SendRewardParams> {
  const SendRewardUsecase(this._repository);

  final AwardsRepository _repository;

  @override
  Future<Either<String, Unit>> call(SendRewardParams params) {
    return _repository.sendReward(params);
  }
}
