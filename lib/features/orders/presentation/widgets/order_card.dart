part of '../orders.dart';
class OrderCard extends StatefulWidget {
  const OrderCard({super.key, required this.order});

  final OrderModel order;

  @override
  State<OrderCard> createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  int currentIndex = 0;
  Timer? timer;

  List<OrderItemModel> get items => widget.order.items;

  @override
  void initState() {
    super.initState();

    if (items.length > 1) {
      timer = Timer.periodic(const Duration(seconds: 1), (_) {
        if (!mounted) return;
        setState(() {
          currentIndex = (currentIndex + 1) % items.length;
        });
      });
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final statusColor = MyOrdersCubit.statusColor(widget.order.status);
    final item = items.isNotEmpty ? items[currentIndex] : null;
    final product = item?.variant?.product;
    final imageUrl = item?.productImages.firstOrNull?.url ??
        product?.images.firstOrNull?.url ??
        '';
    final productName = product?.name ?? 'ordersUnknownProduct'.tr();
    final store = item?.store;
    final isDeliveryAvailable =
        widget.order.deliveryMethod?.toLowerCase() == 'delivery';
    final totalPrice = widget.order.totals?.grand?.finalAmount?.toDouble() ??
        widget.order.totalAmount?.toDouble() ??
        0;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 6.h),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        children: [
          _OrderImageSection(
            imageUrl: imageUrl,
            statusColor: statusColor,
            statusLabel:
                MyOrdersCubit.statusLabel(context, widget.order.status),
          ),
          10.pw,
          Expanded(
            child: _OrderInfoSection(
              order: widget.order,
              item: item,
              productName: productName,
              imageUrl: imageUrl,
              store: store,
              isDeliveryAvailable: isDeliveryAvailable,
              totalPrice: totalPrice,
            ),
          ),
        ],
      ),
    );
  }
}

class _OrderInfoSection extends StatelessWidget {
  const _OrderInfoSection({
    required this.order,
    required this.item,
    required this.productName,
    required this.imageUrl,
    required this.store,
    required this.isDeliveryAvailable,
    required this.totalPrice,
  });

  final OrderModel order;
  final OrderItemModel? item;
  final String productName;
  final String imageUrl;
  final StoreModel? store;
  final bool isDeliveryAvailable;
  final num totalPrice;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Store info
          if (store != null)
            Padding(
              padding: EdgeInsets.only(bottom: 4.h),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100.r),
                    child: CustomImage(
                      height: 20.h,
                      width: 20.h,
                      imageSource: store!.image ?? '',
                      fit: BoxFit.cover,
                    ),
                  ),
                  8.pw,
                  Expanded(
                    child: CustomText(
                      text: store!.companyName ?? '',
                      color: AppColors.blackDark,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w800,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Image.asset(
                    Assets.assetsIconsStar,
                    color: AppColors.goldenColor,
                    height: 16.h,
                    width: 16.w,
                  ),
                  4.pw,
                  CustomText(
                    text: (store!.rating ?? 0.0).toStringAsFixed(1),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.blackDark,
                  ),
                ],
              ),
            ),

          // Product name
          CustomText(
            text: productName,
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            maxLines: 2,
          ),
          4.ph,

          // Delivery badge
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: AppColors.text,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: CustomText(
              text: isDeliveryAvailable ? "delivery".tr() : "pickup".tr(),
              fontWeight: FontWeight.w600,
              color: AppColors.white,
              fontSize: 10.sp,
            ),
          ),
          12.ph,

          // Total price
          CustomText(
            text: '${totalPrice.toString()} ₽',
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
    );
  }
}

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
              borderRadius: BorderRadius.circular(8.r),
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
