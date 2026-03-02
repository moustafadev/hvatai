part of '../cart.dart';

class CartFloatingActionButton extends StatelessWidget {
  const CartFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        final totalPrice = state.totalCartPrice;

        return FloatingActionButton.extended(
          backgroundColor: AppColors.primaryColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
          onPressed: () {
            context.push<double>(AppRoutes.cart);
          },
          icon: Image.asset(
            Assets.assetsIconsStore,
            height: 22.h,
            width: 22.w,
          ),
          label: CustomText(
            text: "${totalPrice.toStringAsFixedSmart} ₽",
            fontSize: 16.sp,
            fontWeight: FontWeight.w800,
            color: AppColors.background,
          ),
        );
      },
    );
  }
}
