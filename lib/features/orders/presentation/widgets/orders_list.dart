import 'package:flutter/material.dart';
import 'package:hvatai/core/extensions/size_extension.dart';
import 'package:hvatai/features/orders/data/model/order_model/order_model.dart';
import 'package:hvatai/features/orders/presentation/widgets/order_card.dart';

/// List widget for displaying orders
/// Shows a scrollable list of order cards
/// Uses ListView.separated for efficient rendering
class OrdersList extends StatelessWidget {
  const OrdersList({
    super.key,
    required this.orders,
  });

  /// List of orders to display
  /// Each order will be rendered as an OrderCard
  final List<OrderModel> orders;

  /// Builds an individual order card
  /// Takes the index and returns the corresponding OrderCard
  Widget _buildOrderCard(BuildContext context, int index) {
    if (index >= orders.length) {
      return const SizedBox.shrink();
    }
    return OrderCard(order: orders[index]);
  }

  /// Builds the separator between order cards
  /// Returns zero height spacing to avoid gaps between cards
  Widget _buildSeparator(BuildContext context, int index) {
    return 0.ph;
  }

  /// Checks if the orders list is empty
  bool get _isEmpty => orders.isEmpty;

  @override
  Widget build(BuildContext context) {
    if (_isEmpty) {
      return const SizedBox.shrink();
    }

    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: orders.length,
      itemBuilder: _buildOrderCard,
      separatorBuilder: _buildSeparator,
    );
  }
}
