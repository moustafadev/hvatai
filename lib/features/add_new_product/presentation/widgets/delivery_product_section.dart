part of '../add_new_product.dart';

class DeliveryProductSection extends StatelessWidget {
  const DeliveryProductSection({
    super.key,
    required this.selected,
    required this.isDeliveryAvailable,
    required this.onChanged,
    required this.onDeliveryTimeChanged,
    required this.onDeliveryPriceChanged,
    required this.onDeliveryTimeSelected,
  });

  final String? selected;
  final bool isDeliveryAvailable;
  final Function(bool) onChanged;
  final Function(String) onDeliveryTimeChanged;
  final Function(String) onDeliveryPriceChanged;
  final Function(String) onDeliveryTimeSelected;

  @override
  Widget build(BuildContext context) {
    final presets = ["20 мин", "30-40 мин", "60 мин", "90 мин", "120 мин"];

    return BlocBuilder<ProductFormCubit, ProductFormState>(
      builder: (context, state) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomSwitchWidget(
                title: 'delivery'.tr(),
                value: isDeliveryAvailable,
                onChanged: (val) {
                  onChanged(val);
                  // unfocus the text field
                  FocusScope.of(context).unfocus();
                },
              ),
            ),
            12.ph,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: AppColors.boxShadowTextField,
                ),
                child: CustomTextField(
                  hintText: "${'deliveryCost'.tr()}, ₽",
                  readOnly: !isDeliveryAvailable,
                  initialValue:
                      state.product.deliveryDiscount?.toStringAsFixedSmart ?? '',
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  enabled: isDeliveryAvailable,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: !isDeliveryAvailable
                        ? AppColors.disabledBackground
                        : AppColors.blackColor,
                  ),
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  hintColor: !isDeliveryAvailable
                      ? AppColors.disabledBackground
                      : AppColors.blackColor.withValues(alpha: 0.2),
                  onChanged: !isDeliveryAvailable
                      ? null
                      : (val) => onDeliveryPriceChanged(val),
                ),
              ),
            ),
            12.ph,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: CustomText(
                    text: 'deliveryTime'.tr(),
                    fontSize: 14.sp,
                    color: !isDeliveryAvailable
                        ? AppColors.disabledBackground
                        : AppColors.blackColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                12.ph,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const ClampingScrollPhysics(),
                  child: Row(
                    spacing: 8,
                    children: presets.asMap().entries.map((entry) {
                      final index = entry.key;
                      final time = entry.value;
                      final isSelected = selected == time;
                      return GestureDetector(
                        onTap: !isDeliveryAvailable
                            ? null
                            : () {
                                if (selected == time) {
                                  onDeliveryTimeSelected('');
                                } else {
                                  onDeliveryTimeSelected(time);
                                }
                              },
                        child: Container(
                          margin: EdgeInsets.only(left: index == 0 ? 16 : 0),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: !isDeliveryAvailable
                                  ? AppColors.disabledBackground
                                  : (isSelected
                                      ? AppColors.text
                                      : AppColors.blackColor
                                          .withValues(alpha: 0.2)),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: CustomText(
                            text: time,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: !isDeliveryAvailable
                                ? AppColors.disabledBackground
                                : (isSelected
                                    ? AppColors.text
                                    : AppColors.blackColor
                                        .withValues(alpha: 0.2)),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            12.ph,
          ],
        );
      },
    );
  }
}
