part of '../product.dart';

class QuantityButtons extends StatelessWidget {
  const QuantityButtons({
    super.key,
    required this.cartItem,
    required this.cartModel,
  });

  final CartItem cartItem;
  final CartModel cartModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BasketCubit, BasketState>(
      builder: (context, state) {
        final currentQuantity = cartItem.quantity ?? 0;

        final hasTempQuantity = state.tempQuantities.containsKey(cartItem.id);
        final displayedQuantity = hasTempQuantity
            ? state.tempQuantities[cartItem.id]!
            : currentQuantity;

        return SizedBox(
          width: 120.w,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CartItemActionsButton(
                icon: Icons.remove_circle_outline_outlined,
                iconColor:
                    displayedQuantity <= 1 ? AppColors.grey : AppColors.grey,
                onTap: () {
                  final newQuantity = displayedQuantity - 1;

                  context.read<BasketCubit>().updateCartItemQuantity(
                        cartItem.id ?? 0,
                        newQuantity,
                      );
                },
              ),
              8.pw,
              Container(
                width: 37.w,
                height: 29.h,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(100.r),
                ),
                child: Center(
                  child: CustomText(
                    text: displayedQuantity == 0
                        ? '1'
                        : displayedQuantity.toString(),
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.blackDark,
                  ),
                ),
              ),
              8.pw,
              CartItemActionsButton(
                icon: Icons.add_circle_outline_outlined,
                iconColor: AppColors.blackDark,
                onTap: () {
                  final newQuantity = displayedQuantity + 1;
                  context.read<BasketCubit>().updateCartItemQuantity(
                        cartItem.id ?? 0,
                        newQuantity,
                      );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
