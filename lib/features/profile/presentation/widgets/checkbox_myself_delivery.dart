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
                state.product.deliveryType?.contains('myself') ?? false;
            return GradientCheckbox(
              selected: isSelected,
              onTap: () {
                cubit.setDeliverType(isSelected ? '' : 'myself');
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
