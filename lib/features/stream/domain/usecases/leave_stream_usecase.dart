// domain/usecases/leave_stream_usecase.dart
import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/stream/data/repositories/stream_repository.dart';

class LeaveStreamUsecase implements UseCase<bool, LeaveStreamParams> {
  final StreamRepository _repo;
  LeaveStreamUsecase(this._repo);

  @override
  Future<Either<String, bool>> call(LeaveStreamParams params) {
    return _repo.leaveStream(streamId: params.streamId);
  }
}

class LeaveStreamParams {
  final int streamId;
  LeaveStreamParams({required this.streamId});
}
