import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/stream/data/models/bid_stream/bid_stream_response.dart';
import 'package:hvatai/features/stream/data/repositories/stream_repository.dart';

class AddStreamBidUsecase
    implements UseCase<BidStreamItem, AddStreamBidParams> {
  final StreamRepository _repo;
  AddStreamBidUsecase(this._repo);

  @override
  Future<Either<String, BidStreamItem>> call(AddStreamBidParams params) {
    return _repo.addBid(params: params);
  }
}

class AddStreamBidParams {
  final int streamId;
  final int streamProductId;
  final String bidAmount; // keep as String to match API body

  AddStreamBidParams({
    required this.streamId,
    required this.streamProductId,
    required this.bidAmount,
  });
}
