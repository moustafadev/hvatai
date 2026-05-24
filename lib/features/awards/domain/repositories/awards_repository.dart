import 'package:dartz/dartz.dart';
import 'package:hvatai/features/awards/data/models/reward_payment_response/reward_payment_response.dart';
import 'package:hvatai/features/awards/domain/usecases/send_reward_usecase.dart';

abstract class AwardsRepository {
  Future<Either<String, RewardPaymentResponse>> sendReward(
    SendRewardParams params,
  );
}