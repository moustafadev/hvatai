import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/extensions/size_extension.dart';
import 'package:hvatai/core/theme/app_colors.dart';
import 'package:hvatai/core/theme/assets.dart';
import 'package:hvatai/features/orders/data/model/order_model/order_model.dart';
import 'package:hvatai/features/orders/presentation/cubit/my_orders_cubit.dart';
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
      backgroundColor: AppColors.lightGreyBackground,
      body: BlocBuilder<MyOrdersCubit, MyOrdersState>(
        builder: (context, state) {
          final cubit = context.read<MyOrdersCubit>();

          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                color: AppColors.primaryColor,
              ),
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
                  CustomAppBar(
                    showSearch: false,
                    showNotification: false,
                    showGift: false,
                    padding: const EdgeInsets.only(top: 8),
                  ),
                  CustomText(
                    text: 'orders'.tr(),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w800,
                  ),
                  16.ph,
                  _OrdersFilterBar(
                    selectedFilter: state.selectedFilter,
                    onFilterSelected: cubit.selectFilter,
                  ),
                  if (filteredOrders.isEmpty)
                    _OrdersEmptyState(
                      message: state.orders.isEmpty
                          ? null
                          : 'ordersEmptyFilter'.tr(),
                      onRefresh: () => cubit.fetchOrders(),
                    )
                  else
                    ListView.separated(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: filteredOrders.length,
                      itemBuilder: (context, index) =>
                          _OrderCard(order: filteredOrders[index]),
                      separatorBuilder: (_, __) => 0.ph,
                    ),
                  24.ph,
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _OrdersFilterBar extends StatelessWidget {
  const _OrdersFilterBar({
    required this.selectedFilter,
    required this.onFilterSelected,
  });

  final String selectedFilter;
  final ValueChanged<String> onFilterSelected;

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
              text: _filterLabel(filter),
              isSelected: isSelected,
              onPressed: () => onFilterSelected(filter),
            ),
          );
        }),
      ),
    );
  }

  String _filterLabel(String filter) {
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
}

class _OrderCard extends StatelessWidget {
  const _OrderCard({required this.order});

  final OrderModel order;

  @override
  Widget build(BuildContext context) {
    final statusColor = MyOrdersCubit.statusColor(order.status);
    final item = order.items.isNotEmpty ? order.items.first : null;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 18.h),
      decoration: BoxDecoration(
        color: AppColors.lightGreyBackground,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: CustomImage(
                  width: 136.w,
                  height: 136.h,
                  imageSource: item?.image ?? '',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8.h,
                left: 8.w,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.w,
                    vertical: 4.h,
                  ),
                  decoration: BoxDecoration(
                    color: statusColor.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: CustomText(
                    text: MyOrdersCubit.statusLabel(context, order.status),
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                    color: statusColor,
                  ),
                ),
              ),
            ],
          ),
          10.pw,
          Expanded(
            child: SizedBox(
              height: 140.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: item?.productName ?? 'ordersUnknownProduct'.tr(),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        maxLines: 2,
                      ),
                      4.ph,
                      CustomText(
                        text: order.address ?? '',
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackTransparent40,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      20.ph,
                      CustomText(
                      text: '${item?.price} ₽',
                      
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    
                    ],
                  ),
                  ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}

class _OrdersEmptyState extends StatelessWidget {
  const _OrdersEmptyState({this.message, required this.onRefresh});

  final String? message;
  final VoidCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.assetsImagesOrderIcon,
              height: 72,
              width: 72,
            ),
            16.ph,
            CustomText(
              text: message ?? 'ordersEmptyTitle'.tr(),
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              textAlign: TextAlign.center,
            ),
            8.ph,
            CustomText(
              text: 'ordersEmptySubtitle'.tr(),
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.blackTransparent40,
              textAlign: TextAlign.center,
            ),
            24.ph,
            CustomGradientButton(
              text: 'retry'.tr(),
              onPressed: onRefresh,
              height: 48,
            ),
          ],
        ),
      ),
    );
  }
}
