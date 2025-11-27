import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/orders/data/model/order_model/order_model.dart';
import 'package:hvatai/features/orders/domain/repositories/orders_repository.dart';

class NoParamsOrders {
  const NoParamsOrders();
}

class GetUserOrdersUsecase
    implements UseCase<List<OrderModel>, NoParamsOrders> {
  GetUserOrdersUsecase(this._ordersRepository);

  final OrdersRepository _ordersRepository;

  @override
  Future<Either<String, List<OrderModel>>> call(NoParamsOrders params) {
    return _ordersRepository.getUserOrders();
  }
}

