import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/all_app/data/model/cart_model.dart';
import 'package:hvatai/features/all_app/domain/repositories/app_repository.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

class AddProductToCartUsecase
    implements UseCase<CartModel, AddProductToCartParams> {
  final AppRepository _appRepository;

  AddProductToCartUsecase(this._appRepository);

  @override
  Future<Either<String, CartModel>> call(AddProductToCartParams params) {
    return _appRepository.addProductToCart(params);
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
