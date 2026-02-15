import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    if (orders.isEmpty) {
      return const SizedBox.shrink();
    }

    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: orders.length,
      itemBuilder: (context, index) => OrderCard(order: orders[index]),
      separatorBuilder: (context, index) => SizedBox(height: 16),
    );
  }
}
