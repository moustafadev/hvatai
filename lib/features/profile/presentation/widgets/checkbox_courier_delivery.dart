part of '../profile.dart';

class CheckboxCourierDelivery extends StatelessWidget {
  const CheckboxCourierDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<MyGoodsCubit>();
    return Row(
      children: [
        BlocBuilder<MyGoodsCubit, MyGoodsState>(
          builder: (context, state) {
            final isSelected =
                state.product.deliveryType?.contains('courier') ?? false;
            return GradientCheckbox(
              selected: isSelected,
              onTap: () {
                cubit.setDeliverType(isSelected ? '' : 'courier');
              },
            );
          },
        ),
        Expanded(
          child: CustomText(
            text: 'courierFromPlatform'.tr(),
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
