import 'package:dartz/dartz.dart';
import 'package:hvatai/features/orders/data/model/order_model/order_model.dart';

abstract class OrdersRepository {
  Future<Either<String, List<OrderModel>>> getUserOrders();
}

