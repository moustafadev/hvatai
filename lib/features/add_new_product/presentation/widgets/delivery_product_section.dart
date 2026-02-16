part of '../add_new_product.dart';

class DeliveryProductSection extends StatelessWidget {
  const DeliveryProductSection({
    super.key,
    required this.presets,
    required this.selected,
  });

  final List<String> presets;
  final String? selected;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductFormCubit, ProductFormState>(
      builder: (context, state) {
        final cubit = context.read<ProductFormCubit>();
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomSwitchWidget(
                title: 'delivery'.tr(),
                value: state.product.deliveryAvailable == true,
                onChanged: (val) {
                  cubit.toggleDeliveryAvailable();
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
                  readOnly: state.product.deliveryAvailable == false,
                  initialValue:
                      state.product.deliveryDiscount?.toString() ?? '',
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  enabled: state.product.deliveryAvailable == true,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: state.product.deliveryAvailable == false
                        ? AppColors.greyBorder
                        : AppColors.blackColor,
                  ),
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: state.product.deliveryAvailable == false
                        ? AppColors.greyBorder
                        : AppColors.blackColor,
                  ),
                  onChanged: state.product.deliveryAvailable == false
                      ? null
                      : (val) => cubit.updateDeliveryPrice(val),
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
                        onTap: state.product.deliveryAvailable == false
                            ? null
                            : () {
                                if (selected == time) {
                                  cubit.updateField('deliveryTime', '');
                                } else {
                                  cubit.updateField('deliveryTime', time);
                                }
                              },
                        child: Container(
                          margin: EdgeInsets.only(left: index == 0 ? 16 : 0),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: state.product.deliveryAvailable == false
                                  ? AppColors.greyBorder
                                  : (isSelected
                                      ? Colors.black
                                      : Colors.grey.shade400),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: CustomText(
                            text: time,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: state.product.deliveryAvailable == false
                                ? AppColors.greyBorder
                                : (isSelected
                                    ? Colors.black
                                    : AppColors.blackColor),
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
