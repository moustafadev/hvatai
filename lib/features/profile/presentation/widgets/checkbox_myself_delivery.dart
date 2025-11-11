part of '../profile.dart';

class CheckboxMyselfDelivery extends StatelessWidget {
  const CheckboxMyselfDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<MyGoodsCubit>();
    return Row(
      children: [
        BlocBuilder<MyGoodsCubit, MyGoodsState>(
          builder: (context, state) {
            final isSelected =
                state.product.deliveryType == 'self_delivery';
            return GradientCheckbox(
              selected: isSelected,
              onTap: () {
                // If already selected, unselect; otherwise select this and unselect the other
                cubit.setDeliverType(isSelected ? '' : 'self_delivery');
              },
            );
          },
        ),
        Expanded(
          child: CustomText(
            text: 'selfDelivery'.tr(),
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
