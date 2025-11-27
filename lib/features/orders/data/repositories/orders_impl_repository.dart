import 'package:dartz/dartz.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/orders/data/datasources/api_service_orders.dart';
import 'package:hvatai/features/orders/data/model/order_model/order_model.dart';
import 'package:hvatai/features/orders/domain/repositories/orders_repository.dart';

class OrdersImplRepository implements OrdersRepository {
  OrdersImplRepository(this._apiServiceOrders);

  final ApiServiceOrders _apiServiceOrders;

  @override
  Future<Either<String, List<OrderModel>>> getUserOrders() {
    return executeAndHandleError<List<OrderModel>>(
      () => _apiServiceOrders.getUserOrders(),
    );
  }
}

