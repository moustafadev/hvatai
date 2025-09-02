import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/stream/data/models/bid_stream_response.dart';
import 'package:hvatai/features/stream/data/repositories/stream_repository.dart';

class GetStreamBidsUsecase
    implements UseCase<BidStreamResponse, GetStreamBidsParams> {
  final StreamRepository _repo;
  GetStreamBidsUsecase(this._repo);

  @override
  Future<Either<String, BidStreamResponse>> call(GetStreamBidsParams params) {
    return _repo.getBids(params: params);
  }
}

class GetStreamBidsParams {
  final int streamId;
  final int page;
  final int perPage;

  GetStreamBidsParams({
    required this.streamId,
    this.page = 1,
    this.perPage = 20,
  });
}
