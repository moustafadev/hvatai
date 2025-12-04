import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/orders/presentation/cubit/my_orders_cubit.dart';

/// Filter bar widget for filtering orders by status
/// Displays horizontal scrollable filter buttons
class OrdersFilterBar extends StatelessWidget {
  const OrdersFilterBar({
    super.key,
    required this.selectedFilter,
    required this.onFilterSelected,
  });

  /// Currently selected filter
  final String selectedFilter;

  /// Callback when a filter is selected
  final ValueChanged<String> onFilterSelected;

  /// Gets the translated label for a filter
  String _getFilterLabel(String filter) {
    switch (filter) {
      case MyOrdersCubit.filterAll:
        return 'ordersFilterAll'.tr();
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

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(MyOrdersCubit.filters.length, (index) {
          final filter = MyOrdersCubit.filters[index];
          final isSelected = selectedFilter == filter;
          return Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: CustomGradiantTabButton(
              text: _getFilterLabel(filter),
              isSelected: isSelected,
              onPressed: () => onFilterSelected(filter),
            ),
          );
        }),
      ),
    );
  }
}
