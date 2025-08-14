part of '../profile.dart';

class AddDeliveryOptionDropdown extends StatelessWidget {
  const AddDeliveryOptionDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyGoodsCubit, MyGoodsState>(
      builder: (context, state) {
        final cubit = context.read<MyGoodsCubit>();
        final product = state.product;
        final itemsKeys = ['courier', 'post', 'pickup'];

        String? currentValue;
        if (product.deliveryMethods != null &&
            product.deliveryMethods!.isNotEmpty) {
          currentValue = product.deliveryMethods!.first;
          print('Current Delivery Method: $currentValue'); // Debug print
        }

        return CustomDropdown(
          hintText: 'deliveryOption'.tr(),
          value: product.deliveryMethods?.isNotEmpty == true
              ? product.deliveryMethods!.first
              : null,
          onChanged: (value) {
            if (value != null) {
              cubit.setOptionDelivery(value);
              print('Selected Value: $value'); // Debug print
            }
          },
          items: itemsKeys
              .map((key) => DropdownMenuItem(
                    value: key,
                    child: Text(key.tr()),
                  ))
              .toList(),
        );
      },
    );
  }
}
