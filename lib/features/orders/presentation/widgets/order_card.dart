import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/extensions/size_extension.dart';
import 'package:hvatai/core/theme/app_colors.dart';
import 'package:hvatai/features/orders/data/model/order_model/order_model.dart';
import 'package:hvatai/features/orders/presentation/cubit/my_orders_cubit.dart';

/// Order card widget displaying order information
/// Shows product image, status, name, address, and price
class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key,
    required this.order,
  });

  final OrderModel order;

  @override
  Widget build(BuildContext context) {
    final statusColor = MyOrdersCubit.statusColor(order.status);
    final item = order.items.isNotEmpty ? order.items.first : null;

    return Container(
      decoration: BoxDecoration(
        color: AppColors.transparent,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _OrderImageSection(
            imageUrl: item?.image ?? '',
            statusColor: statusColor,
            statusLabel: MyOrdersCubit.statusLabel(context, order.status),
          ),
          10.pw,
          Expanded(
            child: _OrderInfoSection(
              productName: item?.productName ?? 'ordersUnknownProduct'.tr(),
              address: order.address ?? '',
              price: item?.price ?? 0,
            ),
          ),
        ],
      ),
    );
  }
}

/// Image section of the order card with status badge
class _OrderImageSection extends StatelessWidget {
  const _OrderImageSection({
    required this.imageUrl,
    required this.statusColor,
    required this.statusLabel,
  });

  final String imageUrl;
  final Color statusColor;
  final String statusLabel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.r),
          child: CustomImage(
            width: 136.w,
            height: 136.h,
            imageSource: imageUrl,
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
              color: statusColor,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: CustomText(
              text: statusLabel,
              fontSize: 10.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

/// Information section of the order card
class _OrderInfoSection extends StatelessWidget {
  const _OrderInfoSection({
    required this.productName,
    required this.address,
    required this.price,
  });

  final String productName;
  final String address;
  final num price;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: productName,
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                maxLines: 2,
              ),
              4.ph,
              CustomText(
                text: address,
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.blackTransparent40,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              20.ph,
              CustomText(
                text: '$price ₽',
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
