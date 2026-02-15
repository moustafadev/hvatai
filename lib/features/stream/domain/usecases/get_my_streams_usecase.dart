import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/stream/data/models/my_streams/my_streams_response.dart';
import 'package:hvatai/features/stream/domain/repositories/stream_repository.dart';

class NoParams {
  const NoParams();
}

class GetMyStreamsUsecase implements UseCase<MyStreamsResponse, NoParams> {
  final StreamRepository _streamRepository;

  GetMyStreamsUsecase(this._streamRepository);

  @override
  Future<Either<String, MyStreamsResponse>> call(NoParams params) {
    return _streamRepository.getMyStreams();
  }
}

