import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/all_app/data/model/cart_model.dart';
import 'package:hvatai/features/all_app/domain/repositories/app_repository.dart';

class UpdateCartUsecase implements UseCase<CartModel, UpdateCartParams> {
  final AppRepository _appRepository;

  UpdateCartUsecase(this._appRepository);

  @override
  Future<Either<String, CartModel>> call(UpdateCartParams params) {
    return _appRepository.updateCart(params);
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
