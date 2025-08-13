part of '../profile.dart';

class AddNewProductsScreen extends StatelessWidget {
  const AddNewProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.lightGreyBackground,
        appBar: CustomAppBar(
          showBack: true,
          showSearch: false,
          showGift: false,
          showNotification: false,
        ),
        body: BlocProvider(
          create: (context) => locator<MyGoodsCubit>(),
          child: BlocBuilder<MyGoodsCubit, MyGoodsState>(
              builder: (context, state) {
            final cubit = context.read<MyGoodsCubit>();
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
                      CustomText(
                        text: 'photo'.tr(),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w800,
                      ),
                      12.ph,
                      UploadPhoto(
                        selectedImages: state.selectedImages,
                        onPickImage: () => cubit.pickImage(),
                      ),
                      24.ph,
                      CustomText(
                        text: 'productDetails'.tr(),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w800,
                      ),
                      12.ph,
                      CustomDropdown(
                        hintText: 'category'.tr(),
                        value: 'category'.tr(),
                        items: [],
                        onChanged: (String? value) {},
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
                        selectedSaleType: state.product.saleType ?? "Auction",
                        onTap: (value) {
                          cubit.setSaleType(value);
                        },
                      ),
                      12.ph,
                      CustomTextField(
                        key: ValueKey('startingBid_field'),
                        hintText: 'startingBid'.tr(),
                        initialValue: state.product.deliveryPrice == null
                            ? ''
                            : state.product.deliveryPrice.toString(),
                        onChanged: (value) =>
                            cubit.updateField('startingBid', value),
                      ),
                      12.ph,
                      state.product.saleType == "Buy Now"
                          ? SizedBox()
                          : CustomDropdown(
                              hintText: 'selectStream'.tr(),
                              value: 'selectStream'.tr(),
                              items: [],
                              onChanged: (String? value) {},
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
                      12.ph,
                      CustomSwitchWidget(
                        title: 'bookLive'.tr(),
                        value: state.bookParticipation,
                        onChanged: (val) => cubit.toggleBookParticipation(),
                      ),
                      CustomText(
                        text: 'bookLiveDesc'.tr(),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.grey,
                      ),
                      24.ph,
                      CustomText(
                        text: 'delivery'.tr(),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w800,
                      ),
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
                            key: ValueKey('length_field'),
                            hintText: 'length'.tr(),
                            initialValue: state.product.deliveryLengthCm == null
                                ? ''
                                : state.product.deliveryLengthCm.toString(),
                            onChanged: (value) =>
                                cubit.updateField('length', value),
                          )),
                          9.5.pw,
                          Expanded(
                              child: CustomTextField(
                            key: ValueKey('width_field'),
                            hintText: 'width'.tr(),
                            initialValue: state.product.deliveryWidthCm == null
                                ? ''
                                : state.product.deliveryWidthCm.toString(),
                            onChanged: (value) =>
                                cubit.updateField('width', value),
                          )),
                          9.5.pw,
                          Expanded(
                              child: CustomTextField(
                            key: ValueKey('height_field'),
                            hintText: 'height'.tr(),
                            initialValue: state.product.deliveryHeightCm == null
                                ? ''
                                : state.product.deliveryHeightCm.toString(),
                            onChanged: (value) =>
                                cubit.updateField('height', value),
                          )),
                        ],
                      ),
                      12.ph,
                      CustomTextField(
                        key: ValueKey('weight_field'),
                        hintText: 'weight'.tr(),
                        initialValue: state.product.deliveryWeightKg == null
                            ? ''
                            : state.product.deliveryWeightKg.toString(),
                        onChanged: (value) =>
                            cubit.updateField('weight', value),
                      ),
                      12.ph,
                      AddDeliveryOptionDropdown(),
                      12.ph,
                      CustomSwitchWidget(
                        title: 'pickupFree'.tr(),
                        value: state.product.selfPickup ?? false,
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
                          isDisabled: false,
                          onPressed: () {},
                        ),
                      ),
                      35.ph,
                    ],
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
