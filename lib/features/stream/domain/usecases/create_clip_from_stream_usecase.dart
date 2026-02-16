import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/stream/domain/repositories/stream_repository.dart';

class CreateClipFromStreamUsecase
    implements UseCase<bool, CreateClipFromStreamParams> {
  final StreamRepository _repo;
  CreateClipFromStreamUsecase(this._repo);

  @override
  Future<Either<String, bool>> call(CreateClipFromStreamParams params) {
    return _repo.createClipFromStream(params: params);
  }
}

class CreateClipFromStreamParams {
  final int streamId;
  final int duration;
  final String name;

  CreateClipFromStreamParams({
    required this.streamId,
    required this.duration,
    required this.name,
  });
}
