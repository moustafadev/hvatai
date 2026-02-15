import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/stream/data/models/stream_products/stream_products_response.dart';
import 'package:hvatai/features/stream/domain/repositories/stream_repository.dart';

class GetStreamProductsUsecase
    implements UseCase<StreamProductsResponseModel, GetStreamProductsParams> {
  final StreamRepository _repo;
  GetStreamProductsUsecase(this._repo);

  @override
  Future<Either<String, StreamProductsResponseModel>> call(
      GetStreamProductsParams params) {
    return _repo.getStreamProducts(params: params);
  }
}

class GetStreamProductsParams {
  final int streamId;

  GetStreamProductsParams({
    required this.streamId,
  });

  Map<String, dynamic> toJson() => {
        'stream_id': streamId,
      };
}
