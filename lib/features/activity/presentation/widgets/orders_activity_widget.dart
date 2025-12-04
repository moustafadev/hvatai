part of '../activity.dart';

class OrdersActivityWidget extends StatelessWidget {
  const OrdersActivityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBackground,
      body: BlocProvider<MyOrdersCubit>(
        create: (_) => locator<MyOrdersCubit>()..fetchOrders(),
        child: const OrdersContent(
          showHeader: false,
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
        ),
      ),
    );
  }
}
