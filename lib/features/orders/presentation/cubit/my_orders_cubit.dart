import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/orders/data/model/order_model/order_model.dart';
import 'package:hvatai/features/orders/domain/usecases/get_user_orders_usecase.dart';

part 'my_orders_state.dart';
part 'my_orders_cubit.freezed.dart';

class MyOrdersCubit extends Cubit<MyOrdersState> {
  MyOrdersCubit(this._getUserOrdersUsecase)
      : super(const MyOrdersState(selectedFilter: filterAll));

  final GetUserOrdersUsecase _getUserOrdersUsecase;

  static const String filterAll = 'all';
  static const List<String> filters = <String>[
    filterAll,
    'pending',
    'awaiting_shipment',
    'awaiting_receipt',
    'in_transit',
    'delivered',
  ];

  Future<void> fetchOrders() async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));
    final result = await _getUserOrdersUsecase(const NoParamsOrders());
    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          errorMessage: failure,
        ),
      ),
      (orders) => emit(
        state.copyWith(
          isLoading: false,
          orders: orders,
        ),
      ),
    );
  }

  void selectFilter(String filter) {
    emit(state.copyWith(selectedFilter: filter));
  }

  List<OrderModel> get filteredOrders {
    if (state.selectedFilter == filterAll) {
      return state.orders;
    }
    return state.orders
        .where(
          (order) =>
              (order.status ?? '').toLowerCase() == state.selectedFilter,
        )
        .toList();
  }

  static bool isNewOrder(OrderModel order) {
    return (order.status ?? '').toLowerCase() == 'pending';
  }

  static String statusLabel(BuildContext context, String? status) {
    switch ((status ?? '').toLowerCase()) {
      case 'pending':
        return 'ordersStatusPending'.tr();
      case 'awaiting_shipment':
        return 'ordersStatusAwaitingShipment'.tr();
      case 'awaiting_receipt':
        return 'ordersStatusAwaitingReceipt'.tr();
      case 'in_transit':
        return 'ordersStatusInTransit'.tr();
      case 'delivered':
        return 'ordersStatusDelivered'.tr();
      default:
        return 'ordersStatusUnknown'.tr();
    }
  }

  static Color statusColor(String? status) {
    switch ((status ?? '').toLowerCase()) {
      case 'pending':
        return const Color(0xFF4E5BA6);
      case 'awaiting_shipment':
        return const Color(0xFF00BCD4);
      case 'awaiting_receipt':
        return const Color(0xFFFFC107);
      case 'in_transit':
        return const Color(0xFF4CAF50);
      case 'delivered':
        return const Color(0xFF00C48C);
      default:
        return const Color(0xFFB0BEC5);
    }
  }
}

