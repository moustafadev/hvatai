import 'package:dartz/dartz.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/awards/data/datasources/api_service_awards.dart';
import 'package:hvatai/features/awards/domain/repositories/awards_repository.dart';
import 'package:hvatai/features/awards/domain/usecases/send_reward_usecase.dart';

class AwardsImplRepository implements AwardsRepository {
  final ApiServiceAwards _apiServiceAwards;

  AwardsImplRepository(this._apiServiceAwards);

  @override
  Future<Either<String, Unit>> sendReward(SendRewardParams params) {
    return executeAndHandleError<Unit>(() async {
      await _apiServiceAwards.sendReward(
        userId: params.userId,
        body: {
          'amount': params.amount,
          'message': params.message,
          'payment_method': params.paymentMethod,
        },
      );
      return unit;
    });
  }
}
