import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/theme/app_colors.dart';
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
          (order) => (order.status ?? '').toLowerCase() == state.selectedFilter,
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
        return AppColors.purple2;
      case 'awaiting_shipment':
        return AppColors.primaryColor;
      case 'awaiting_receipt':
        return AppColors.gold;
      case 'in_transit':
        return AppColors.green;
      case 'delivered':
        return AppColors.primary;
      default:
        return AppColors.grey;
    }
  }
}
