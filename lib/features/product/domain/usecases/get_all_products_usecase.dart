import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/product/domain/repositories/product_repository.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

class GetAllProductsUsecase implements UseCase<List<ProductModel>, Unit> {
  final ProductRepository _productRepository;

  GetAllProductsUsecase(this._productRepository);

  @override
  Future<Either<String, List<ProductModel>>> call(Unit params) {
    return _productRepository.getAllProducts();
  }
}
