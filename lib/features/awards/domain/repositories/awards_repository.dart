import 'package:dartz/dartz.dart';
import 'package:hvatai/features/awards/domain/usecases/send_reward_usecase.dart';

abstract class AwardsRepository {
  Future<Either<String, Unit>> sendReward(SendRewardParams params);
}
