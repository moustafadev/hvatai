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

        // Find matching key from stored value
        String? currentValue;
        if (product.deliveryMethods != null &&
            product.deliveryMethods!.isNotEmpty) {
          final storedValue = product.deliveryMethods!.first;
          // Try to find matching key by checking if stored value matches any translation
          for (final key in itemsKeys) {
            if (key.tr() == storedValue) {
              currentValue = key;
              break;
            }
          }
          // If no match found, assume it's already a key
          currentValue ??= itemsKeys.contains(storedValue) ? storedValue : null;
        }

        return CustomDropdown(
          hintText: 'deliveryOption'.tr(),
          value: currentValue,
          onChanged: (value) {
            if (value != null) {
              // Store the key (will be translated when sending to API)
              cubit.setOptionDelivery(value);
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
