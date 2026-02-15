import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/stream/data/models/bid_session/bid_session_response.dart';
import 'package:hvatai/features/stream/domain/repositories/stream_repository.dart';

class GetBidSessionUsecase
    implements UseCase<BidSessionResponse, GetBidSessionParams> {
  final StreamRepository _repo;
  GetBidSessionUsecase(this._repo);

  @override
  Future<Either<String, BidSessionResponse>> call(GetBidSessionParams params) {
    return _repo.getBidSession(params: params);
  }
}

class GetBidSessionParams {
  final int streamId;

  GetBidSessionParams({
    required this.streamId,
  });

  Map<String, dynamic> toJson() => {
        'stream_id': streamId,
      };
}
