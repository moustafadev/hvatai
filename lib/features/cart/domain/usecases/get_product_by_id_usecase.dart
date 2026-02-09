import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/cart/data/model/product_with_others_response.dart';
import 'package:hvatai/features/cart/domain/repositories/cart_repository.dart';

class GetProductByIdUsecase
    implements UseCase<ProductWithOthersResponse, GetProductByIdParams> {
  final CartRepository _repo;
  GetProductByIdUsecase(this._repo);

  @override
  Future<Either<String, ProductWithOthersResponse>> call(
      GetProductByIdParams params) {
    return _repo.getProductById(params.productId);
  }
}

class GetProductByIdParams {
  final int productId;

  GetProductByIdParams({required this.productId});
}
