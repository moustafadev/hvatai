import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/add_new_product/domain/repositories/add_new_product_repository.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

class UpdateProductParams {
  const UpdateProductParams({
    required this.productId,
    required this.product,
  });

  final int productId;
  final ProductModel product;
}

class UpdateProductUsecase
    implements UseCase<ProductModel, UpdateProductParams> {
  UpdateProductUsecase(this._repository);

  final AddNewProductRepository _repository;

  @override
  Future<Either<String, ProductModel>> call(UpdateProductParams params) {
    return _repository.updateProduct(
      productId: params.productId,
      product: params.product,
    );
  }
}

