part of '../add_new_product.dart';

class QantityWidget extends StatelessWidget {
  const QantityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductFormCubit, ProductFormState>(
      builder: (context, state) {
        final cubit = context.read<ProductFormCubit>();
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: '${'quantity'.tr()}:',
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    cubit.decreaseQuantity();
                  },
                  child: SvgPicture.asset(
                    Assets.assetsIconsMinusCircle,
                    width: 23.w,
                    height: 23.h,
                    colorFilter: ColorFilter.mode(
                        // if the count is 1, make it grey
                        state.product.variants.isNotEmpty &&
                                state.product.variants.first.stock == 1
                            ? AppColors.text.withValues(alpha: 0.4)
                            : AppColors.blackColor,
                        BlendMode.srcIn),
                  ),
                ),
                SizedBox(width: 16.w),
                SizedBox(
                  width: 37.w,
                  height: 29.h,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                      shape: BoxShape.circle,
                    ),
                    child: CustomText(
                      text:
                          '${state.product.variants.isNotEmpty ? state.product.variants.first.stock : 1}',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.blackDark,
                    ),
                  ),
                ),
                SizedBox(width: 16.w),
                GestureDetector(
                  onTap: () {
                    cubit.increaseQuantity();
                  },
                  child: SvgPicture.asset(
                    Assets.assetsIconsAddCircle,
                    width: 23.w,
                    height: 23.h,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
