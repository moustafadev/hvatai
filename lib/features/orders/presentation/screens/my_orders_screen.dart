import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/theme/app_colors.dart';
import 'package:hvatai/features/orders/presentation/cubit/my_orders_cubit.dart';
import 'package:hvatai/features/orders/presentation/widgets/orders_content.dart';
import 'package:hvatai/locator.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MyOrdersCubit>(
      create: (_) => locator<MyOrdersCubit>()..fetchOrders(),
      child: const _MyOrdersView(),
    );
  }
}

class _MyOrdersView extends StatelessWidget {
  const _MyOrdersView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            context.pop();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.blackDark,
          ),
        ),
        backgroundColor: AppColors.background,
        elevation: 0,
      ),
      backgroundColor: AppColors.background,
      body: const OrdersContent(),
    );
  }
}
