import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/extensions/size_extension.dart';
import 'package:hvatai/features/orders/presentation/cubit/my_orders_cubit.dart';
import 'package:hvatai/features/orders/presentation/widgets/orders_empty_state.dart';
import 'package:hvatai/features/orders/presentation/widgets/orders_filter_bar.dart';
import 'package:hvatai/features/orders/presentation/widgets/orders_list.dart';

/// Main content widget for the orders screen
/// Handles loading, error, and success states
class OrdersContent extends StatelessWidget {
  const OrdersContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyOrdersCubit, MyOrdersState>(
      builder: (context, state) {
        final cubit = context.read<MyOrdersCubit>();

        if (state.isLoading) {
          return const Center(
            child: CustomCircularProgressIndicator(),
          );
        }

        if (state.errorMessage.isNotEmpty) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: CustomText(
                text: state.errorMessage,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.center,
              ),
            ),
          );
        }

        final filteredOrders = cubit.filteredOrders;

        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'orders'.tr(),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w800,
                ),
                16.ph,
                OrdersFilterBar(
                  selectedFilter: state.selectedFilter,
                  onFilterSelected: cubit.selectFilter,
                ),
                16.ph,
                if (filteredOrders.isEmpty)
                  OrdersEmptyState(
                    message:
                        state.orders.isEmpty ? null : 'ordersEmptyFilter'.tr(),
                    onRefresh: () => cubit.fetchOrders(),
                  )
                else
                  OrdersList(orders: filteredOrders),
                24.ph,
              ],
            ),
          ),
        );
      },
    );
  }
}
