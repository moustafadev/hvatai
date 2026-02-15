// domain/usecases/leave_stream_usecase.dart
import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/stream/data/models/start_stream/start_stream_model.dart';
import 'package:hvatai/features/stream/domain/repositories/stream_repository.dart';

class StartStreamUsecase implements UseCase<StartStreamModel, int> {
  final StreamRepository _repo;
  StartStreamUsecase(this._repo);

  @override
  Future<Either<String, StartStreamModel>> call(int streamId) {
    return _repo.startStream(streamId: streamId);
  }
}
