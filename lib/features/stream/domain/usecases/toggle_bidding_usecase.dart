import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/stream/data/models/toggle_bidding/toggle_bidding_response.dart';
import 'package:hvatai/features/stream/data/repositories/stream_repository.dart';

class ToggleBiddingUsecase
    implements UseCase<ToggleBiddingResponseModel, ToggleBiddingParams> {
  final StreamRepository _repo;
  ToggleBiddingUsecase(this._repo);

  @override
  Future<Either<String, ToggleBiddingResponseModel>> call(
      ToggleBiddingParams params) {
    return _repo.toggleBidding(params: params);
  }
}

class ToggleBiddingParams {
  final int streamId;
  final int streamProductId;
  final double bidAmount;
  final String? notes;

  ToggleBiddingParams({
    required this.streamId,
    required this.streamProductId,
    required this.bidAmount,
    this.notes,
  });

  Map<String, dynamic> toJson() => {
        'stream_id': streamId,
        'stream_product_id': streamProductId,
        'bid_amount': bidAmount,
        if (notes != null && notes!.isNotEmpty) 'notes': notes,
      };
}
