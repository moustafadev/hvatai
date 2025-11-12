part of '../profile.dart';

class AddNewProductsScreen extends StatelessWidget {
  const AddNewProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.lightGreyBackground,
        appBar: CustomAppBar(
          showBack: true,
          showSearch: false,
          showGift: false,
          showNotification: false,
          height: 50,
        ),
        body: const NewProductWidgetBody());
  }
}

class NewProductWidgetBody extends StatelessWidget {
  const NewProductWidgetBody({
    super.key,
    this.allowedCategoryIds,
  });

  final List<int>? allowedCategoryIds;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<MyGoodsCubit>()..getProductCategory(),
      child: BlocBuilder<MyGoodsCubit, MyGoodsState>(builder: (context, state) {
        final cubit = context.read<MyGoodsCubit>();
        if (state.isLoading) {
          return const Center(
              child: CircularProgressIndicator(
            color: AppColors.grey,
          ));
        }

        if (state.errorMessage.isNotEmpty) {
          return Center(child: Text(state.errorMessage));
        }

        return CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  12.ph,
                  CustomText(
                    text: 'createProduct'.tr(),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w800,
                  ),
                  12.ph,
                  CustomProductImageWidget(
                      updateImage: (List<String> imageUpdate) {
                        cubit.updateProductImages(imageUpdate);
                      },
                      initialImages: state.product.images,
                      title: 'photo'.tr()),
                  24.ph,
                  CustomText(
                    text: 'productDetails'.tr(),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w800,
                  ),
                  12.ph,
                  CategoryDropdown(
                    allowedCategoryIds: allowedCategoryIds,
                  ),
                  12.ph,
                  CustomTextField(
                    key: ValueKey('title_field'),
                    hintText: 'title'.tr(),
                    initialValue: state.product.productName,
                    onChanged: (value) => cubit.updateField('name', value),
                  ),
                  12.ph,
                  CustomTextField(
                    key: ValueKey('description_field'),
                    hintText: 'description'.tr(),
                    initialValue: state.product.productDescription,
                    onChanged: (value) =>
                        cubit.updateField('description', value),
                    maxLines: 5,
                  ),
                  12.ph,
                  AddProductActionButton(),
                  24.ph,
                  CustomText(
                    text: 'saleType'.tr(),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w800,
                  ),
                  12.ph,
                  SaleTypeButton(
                    selectedSaleType: state.product.saleType,
                    onTap: (value) {
                      cubit.setSaleType(value);
                    },
                  ),
                  12.ph,
                  CustomTextField(
                    key: ValueKey('startingBid_field'),
                    hintText: state.product.saleType == "buy_now"
                        ? 'price'.tr()
                        : 'startingBid'.tr(),
                    initialValue: state.product.variants.isNotEmpty &&
                            state.product.variants.first.price != null
                        ? state.product.variants.first.price.toString()
                        : '',
                    onChanged: (value) =>
                        cubit.updateField('startingBid', value),
                  ),
                  12.ph,
                  CustomSwitchWidget(
                    title: 'selfDestruction'.tr(),
                    value: state.selfDestruction,
                    onChanged: (val) => cubit.toggleSelfDestruction(),
                  ),
                  CustomText(
                    text: 'selfDestructionDesc'.tr(),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey,
                  ),
                  24.ph,
                  CustomSwitchWidget(
                    title: 'delivery'.tr(),
                    size: 20.sp,
                    fontWeight: FontWeight.w800,
                    value: state.product.deliveryAvailable ?? false,
                    onChanged: (val) => cubit.toggleDeliveryAvailable(),
                  ),
                  state.product.deliveryAvailable ?? false
                      ? Column(
                          children: [
                            12.ph,
                            CheckboxCourierDelivery(),
                            12.ph,
                            CheckboxMyselfDelivery(),
                            12.ph,
                            CustomTextField(
                              key: const ValueKey('delivery_time_field'),
                              hintText: 'deliveryTime'.tr(),
                              controller: cubit.deliveryTimeController,
                              onChanged: (value) =>
                                  cubit.updateField('deliveryTime', value),
                            ),
                            7.ph,
                            RowTimeDelivery(
                              selectedTime: state.product.deliveryTime ?? '',
                              onSelectTime: (selectedTime) {
                                cubit.updateField('deliveryTime', selectedTime);
                              },
                            ),
                            12.ph,
                            CustomTextField(
                              key: ValueKey('delivery_price_field'),
                              hintText: 'deliveryPrice'.tr(),
                              initialValue: state.product.deliveryPrice == null
                                  ? ''
                                  : state.product.deliveryPrice.toString(),
                              onChanged: (value) =>
                                  cubit.updateField('deliveryPrice', value),
                            ),
                            12.ph,
                            AddDeliveryOptionDropdown(),
                            12.ph,
                            CustomText(
                              text: 'parcelSize'.tr(),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                            ),
                            12.ph,
                            Row(
                              children: [
                                Expanded(
                                  child: CustomTextField(
                                    key: ValueKey('delivery_length_field'),
                                    hintText: 'length'.tr(),
                                    initialValue:
                                        state.product.deliveryLengthCm == null
                                            ? ''
                                            : state.product.deliveryLengthCm
                                                .toString(),
                                    onChanged: (value) =>
                                        cubit.updateField('length', value),
                                  ),
                                ),
                                8.pw,
                                Expanded(
                                  child: CustomTextField(
                                    key: ValueKey('delivery_width_field'),
                                    hintText: 'width'.tr(),
                                    initialValue:
                                        state.product.deliveryWidthCm == null
                                            ? ''
                                            : state.product.deliveryWidthCm
                                                .toString(),
                                    onChanged: (value) =>
                                        cubit.updateField('width', value),
                                  ),
                                ),
                                8.pw,
                                Expanded(
                                  child: CustomTextField(
                                    key: ValueKey('delivery_height_field'),
                                    hintText: 'height'.tr(),
                                    initialValue:
                                        state.product.deliveryHeightCm == null
                                            ? ''
                                            : state.product.deliveryHeightCm
                                                .toString(),
                                    onChanged: (value) =>
                                        cubit.updateField('height', value),
                                  ),
                                ),
                              ],
                            ),
                            12.ph,
                            CustomTextField(
                              key: ValueKey('delivery_weight_field'),
                              hintText: 'weight'.tr(),
                              initialValue: state.product.deliveryWeightKg ==
                                      null
                                  ? ''
                                  : state.product.deliveryWeightKg.toString(),
                              onChanged: (value) =>
                                  cubit.updateField('weight', value),
                            ),
                          ],
                        )
                      : SizedBox(),
                  12.ph,
                  CustomSwitchWidget(
                    title: 'pickupFree'.tr(),
                    value: state.product.selfPickup == true,
                    onChanged: (val) => cubit.togglePickupFree(),
                  ),
                  30.ph,
                ]),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: CustomGradientButton(
                      text: 'save'.tr(),
                      // isDisabled: cubit.isDisabled(),
                      isLoading: state.isLoading,
                      onPressed: () {
                        cubit.addProduct(context);
                      },
                    ),
                  ),
                  35.ph,
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
