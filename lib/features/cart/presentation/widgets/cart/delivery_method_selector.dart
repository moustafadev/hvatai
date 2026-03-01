part of '../../cart.dart';

class DeliveryMethodSelector extends StatelessWidget {
  final List<CartItem> items;

  const DeliveryMethodSelector({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, cartState) {
        final cubit = context.read<CartCubit>();

        /// -------- CHECK AVAILABILITY --------
        bool allSupportDelivery = true;
        bool allSupportPickup = true;
        bool anySupportsDelivery = false;
        bool anySupportsPickup = false;

        for (final item in items) {
          final fulfillment = item.fulfillment;

          if (fulfillment != null) {
            if (fulfillment.delivery == true) {
              anySupportsDelivery = true;
            } else {
              allSupportDelivery = false;
            }

            if (fulfillment.pickup == true) {
              anySupportsPickup = true;
            } else {
              allSupportPickup = false;
            }
          }
        }

        final deliveryOnly = allSupportDelivery && !anySupportsPickup;
        final pickupOnly = allSupportPickup && !anySupportsDelivery;
        final bothAvailable = anySupportsDelivery && anySupportsPickup;

        final currentMethod = cartState.deliveryMethod;

        /// -------- AUTO SELECT --------
        if (deliveryOnly && currentMethod != 'delivery') {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            cubit.updateDeliveryMethod('delivery');
          });
        } else if (pickupOnly && currentMethod != 'pickup') {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            cubit.updateDeliveryMethod('pickup');
          });
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// ================= DELIVERY =================
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: (deliveryOnly || bothAvailable)
                      ? () => cubit.updateDeliveryMethod('delivery')
                      : null,
                  child: Opacity(
                    opacity: (deliveryOnly || bothAvailable) ? 1.0 : 0.5,
                    child: Row(
                      children: [
                        CustomRadioButton(
                          isSelected: currentMethod == 'delivery',
                        ),
                        8.pw,
                        CustomText(
                          text: 'Доставка',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: (deliveryOnly || bothAvailable)
                              ? AppColors.text
                              : AppColors.text.withValues(alpha: 0.5),
                        ),
                      ],
                    ),
                  ),
                ),

                /// Warning if pickup unavailable
                if (pickupOnly)
                  Container(
                    height: 24,
                    margin: EdgeInsets.only(top: 12.h),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 6.w),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          Assets.assetsIconsDangerTriangle,
                          height: 14.h,
                          width: 14.w,
                        ),
                        8.pw,
                        Flexible(
                          child: CustomText(
                            text: 'Заведение не предлагает самовывоз.',
                            fontSize: 10.sp,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),

            SizedBox(height: 12.h),

            /// ================= PICKUP =================
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: (pickupOnly || bothAvailable)
                      ? () => cubit.updateDeliveryMethod('pickup')
                      : null,
                  child: Opacity(
                    opacity: (pickupOnly || bothAvailable) ? 1.0 : 0.5,
                    child: Row(
                      children: [
                        CustomRadioButton(
                          isSelected: currentMethod == 'pickup',
                        ),
                        8.pw,
                        CustomText(
                          text: 'Самовывоз',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: (pickupOnly || bothAvailable)
                              ? AppColors.text
                              : AppColors.blackColor.withValues(alpha: 0.5),
                        ),
                      ],
                    ),
                  ),
                ),

                // /// Warning if delivery unavailable
                // if (deliveryOnly)
                //   Container(
                //     height: 24,
                //     margin: EdgeInsets.only(top: 12.h),
                //     decoration: BoxDecoration(
                //       color: AppColors.primaryColor.withValues(alpha: 0.1),
                //       borderRadius: BorderRadius.circular(5.r),
                //     ),
                //     padding: EdgeInsets.symmetric(horizontal: 6.w),
                //     child: Row(
                //       mainAxisSize: MainAxisSize.min,
                //       children: [
                //         Image.asset(
                //           Assets.assetsIconsDangerTriangle,
                //           height: 14.h,
                //           width: 14.w,
                //         ),
                //         8.pw,
                //         Flexible(
                //           child: CustomText(
                //             text: 'Заведение не предлагает доставку.',
                //             fontSize: 10.sp,
                //             color: AppColors.primaryColor,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
              ],
            ),
          ],
        );
      },
    );
  }
}
