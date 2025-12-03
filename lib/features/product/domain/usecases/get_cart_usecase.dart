import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/product/data/model/cart_model.dart';
import 'package:hvatai/features/product/domain/repositories/product_repository.dart';

class GetCartUsecase implements UseCase<List<CartModel>, Unit> {
  final ProductRepository _productRepository;

  GetCartUsecase(this._productRepository);

  @override
  Future<Either<String, List<CartModel>>> call(Unit params) {
    return _productRepository.getAllCarts();
  }
}
