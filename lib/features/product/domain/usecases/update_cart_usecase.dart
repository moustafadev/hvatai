import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/product/data/model/cart_model.dart';
import 'package:hvatai/features/product/domain/repositories/product_repository.dart';

class UpdateCartUsecase implements UseCase<CartModel, UpdateCartParams> {
  final ProductRepository _productRepository;

  UpdateCartUsecase(this._productRepository);

  @override
  Future<Either<String, CartModel>> call(UpdateCartParams params) {
    return _productRepository.updateCart(params);
  }
}

class UpdateCartParams {
  final int cartId;
  final int quantity;

  UpdateCartParams({
    required this.cartId,
    required this.quantity,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': cartId,
      'quantity': quantity,
    };
  }
}
