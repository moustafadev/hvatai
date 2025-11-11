import 'package:dartz/dartz.dart';
import 'package:hvatai/features/home/data/model/live_stream_event/live_stream_event.dart';
import 'package:hvatai/features/home/domain/repositories/home_repository.dart';

class WatchLiveStreamsUsecase {
  final HomeRepository _repository;

  WatchLiveStreamsUsecase(this._repository);

  Stream<Either<String, LiveStreamEvent>> call() {
    return _repository.watchLiveStreams();
  }
}
