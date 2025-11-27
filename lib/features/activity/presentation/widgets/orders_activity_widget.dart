part of '../activity.dart';

class OrdersActivityWidget extends StatelessWidget {
  const OrdersActivityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.lightGreyBackground,
      body: MyOrdersBody(
        showHeader: false,
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
      ),
    );
  }
}

