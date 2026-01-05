part of '../profile.dart';

class AddProductActionButton extends StatelessWidget {
  const AddProductActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductFormCubit, ProductFormState>(
      builder: (context, state) {
        final cubit = context.read<ProductFormCubit>();
        return Row(
          children: [
            CustomText(
              text: 'quantity'.tr(),
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
            const Spacer(),
            CartItemActionsButton(
              icon: Icons.remove_circle_outline_outlined,
              iconColor: AppColors.grey,
              onTap: cubit.decreaseQuantity,
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
                  text: (state.product.variants.isNotEmpty
                          ? state.product.variants.first.stock
                          : 1)
                      .toString(),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            8.pw,
            CartItemActionsButton(
              icon: Icons.add_circle_outline_outlined,
              onTap: cubit.increaseQuantity,
              iconColor: AppColors.blackDark,
            ),
          ],
        );
      },
    );
  }
}
