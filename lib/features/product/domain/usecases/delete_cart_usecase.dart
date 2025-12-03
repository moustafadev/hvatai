import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/product/domain/repositories/product_repository.dart';

class DeleteCartUsecase implements UseCase<Unit, DeleteCartParams> {
  final ProductRepository _productRepository;

  DeleteCartUsecase(this._productRepository);

  @override
  Future<Either<String, Unit>> call(DeleteCartParams params) {
    return _productRepository.deleteCart(params);
  }
}

class DeleteCartParams {
  final int cartId;

  DeleteCartParams({required this.cartId});

  Map<String, dynamic> toJson() => {
        'id': cartId,
      };
}
