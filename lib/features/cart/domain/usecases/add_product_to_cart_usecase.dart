import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/cart/data/model/cart_model.dart';
import 'package:hvatai/features/cart/domain/repositories/cart_repository.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

class AddProductToCartUsecase
    implements UseCase<CartModel, AddProductToCartParams> {
  final CartRepository _productRepository;

  AddProductToCartUsecase(this._productRepository);

  @override
  Future<Either<String, CartModel>> call(AddProductToCartParams params) {
    return _productRepository.addProductToCart(params);
  }
}

class AddProductToCartParams {
  final int itemId;
  final int quantity;
  final VariantModel itemType;

  AddProductToCartParams({
    required this.itemId,
    required this.quantity,
    required this.itemType,
  });

  Map<String, dynamic> toJson() {
    return {"item_id": itemId, "quantity": quantity, "item_type": itemType};
  }
}
