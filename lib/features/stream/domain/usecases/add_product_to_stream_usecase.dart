import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';
import 'package:hvatai/features/stream/domain/repositories/stream_repository.dart';

class AddProductToStreamUsecase
    implements UseCase<StreamProductModel, AddProductToStreamParams> {
  final StreamRepository _repo;
  AddProductToStreamUsecase(this._repo);

  @override
  Future<Either<String, StreamProductModel>> call(AddProductToStreamParams params) {
    return _repo.addProductToStream(params: params);
  }
}

class AddProductToStreamParams {
  final int streamId;
  final int productId;
  final double startingPrice;

  AddProductToStreamParams({
    required this.streamId,
    required this.productId,
    required this.startingPrice,
  });
}

