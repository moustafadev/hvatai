// domain/usecases/join_stream_usecase.dart
import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/home/data/model/join_stream_model/join_stream_model.dart';
import 'package:hvatai/features/home/domain/repositories/home_repository.dart';

class JoinStreamUsecase
    implements UseCase<JoinStreamResponse, int> {
  final HomeRepository _repo;
  JoinStreamUsecase(this._repo);

  @override
  Future<Either<String, JoinStreamResponse>> call(int streamId) {
    return _repo.joinStream(
      streamId: streamId
    );
  }
}