import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/cart/domain/repositories/cart_repository.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

class AddFavProductUsecase
    implements UseCase<ProductModel, AddFavProductParams> {
  final CartRepository _productRepository;

  AddFavProductUsecase(this._productRepository);

  @override
  Future<Either<String, ProductModel>> call(AddFavProductParams params) {
    return _productRepository.addFavProduct(params);
  }
}

class AddFavProductParams {
  final int productId;

  AddFavProductParams({
    required this.productId,
  });

  Map<String, dynamic> toJson() {
    return {
      'product_id': productId,
    };
  }
}
