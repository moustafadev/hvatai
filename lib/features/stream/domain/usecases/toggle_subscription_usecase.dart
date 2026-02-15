import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/stream/domain/repositories/stream_repository.dart';

class ToggleSubscriptionParams {
  const ToggleSubscriptionParams({required this.userId});

  final int userId;
}

class ToggleSubscriptionUsecase
    implements UseCase<bool, ToggleSubscriptionParams> {
  ToggleSubscriptionUsecase(this._repository);

  final StreamRepository _repository;

  @override
  Future<Either<String, bool>> call(ToggleSubscriptionParams params) {
    return _repository.toggleSubscription(params: params);
  }
}

