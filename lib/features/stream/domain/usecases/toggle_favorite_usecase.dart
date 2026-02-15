import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/stream/domain/repositories/stream_repository.dart';

class ToggleFavoriteParams {
  final String type; // 'product', 'user', 'category', 'stream', 'clip'
  final int id;

  const ToggleFavoriteParams({
    required this.type,
    required this.id,
  });
}

class ToggleFavoriteUsecase implements UseCase<void, ToggleFavoriteParams> {
  const ToggleFavoriteUsecase(this._repository);

  final StreamRepository _repository;

  @override
  Future<Either<String, void>> call(ToggleFavoriteParams params) {
    return _repository.toggleFavorite(
      type: params.type,
      id: params.id,
    );
  }
}
