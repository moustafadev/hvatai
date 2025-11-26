import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/all_app/data/model/order_response/order_response.dart';
import 'package:hvatai/features/all_app/domain/repositories/app_repository.dart';

class CreateOrderParams {
  final int cartId;
  final String paymentMethod;
  final int walletId;
  final String street;
  final String city;
  final String? floor;
  final String? frontDoor;
  final String? intercomCode;
  final String? apartment;
  final bool confirmationCall;

  CreateOrderParams({
    required this.cartId,
    required this.paymentMethod,
    required this.walletId,
    required this.street,
    required this.city,
    this.floor,
    this.frontDoor,
    this.intercomCode,
    this.apartment,
    required this.confirmationCall,
  });

  Map<String, dynamic> toJson() => {
        'cart_id': cartId,
        'payment_method': paymentMethod,
        'wallet_id': walletId,
        'street': street,
        'city': city,
        if (floor != null) 'floor': floor,
        if (frontDoor != null) 'front_door': frontDoor,
        if (intercomCode != null) 'intercom_code': intercomCode,
        if (apartment != null) 'apartment': apartment,
        'confirmation_call': confirmationCall,
      };
}

class CreateOrderUsecase implements UseCase<OrderResponse, CreateOrderParams> {
  final AppRepository _appRepository;

  CreateOrderUsecase(this._appRepository);

  @override
  Future<Either<String, OrderResponse>> call(CreateOrderParams params) {
    return _appRepository.createOrderFromCart(params);
  }
}

