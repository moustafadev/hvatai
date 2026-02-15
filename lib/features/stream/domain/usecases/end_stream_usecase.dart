// domain/usecases/end_stream_usecase.dart
import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/stream/domain/repositories/stream_repository.dart';

class EndStreamUsecase implements UseCase<bool, EndStreamParams> {
  final StreamRepository _repo;
  EndStreamUsecase(this._repo);

  @override
  Future<Either<String, bool>> call(EndStreamParams params) {
    return _repo.endStream(streamId: params.streamId);
  }
}

class EndStreamParams {
  final int streamId;
  EndStreamParams({required this.streamId});
}
