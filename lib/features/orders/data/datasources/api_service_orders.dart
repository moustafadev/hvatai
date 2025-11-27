import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/orders/data/model/order_model/order_model.dart';

class ApiServiceOrders extends ApiBase {
  Future<List<OrderModel>> getUserOrders() async {
    return executeAndHandleErrorServer<List<OrderModel>>(() async {
      final response = await get(ServerConfig.userOrders);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> data =
            List<dynamic>.from(response.json['orders'] ?? <dynamic>[]);
        return data.map((order) => OrderModel.fromJson(order)).toList();
      }
      throw Exception('Failed to fetch orders');
    });
  }
}

