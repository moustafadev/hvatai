part of '../profile.dart';

class AddNewGoods extends StatelessWidget {
  const AddNewGoods({super.key});

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
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      hintText: 'name'.tr(),
                    ),
                    12.ph,
                    CustomTextField(
                      isRequired: false,
                      hintText: 'description'.tr(),
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
                      selectedButtonIndex: state.selectedButtonIndex,
                      onTap: (index) => cubit.changeTab(index),
                    ),
                    12.ph,
                    CustomTextField(
                      hintText: 'startingBid'.tr(),
                    ),
                    12.ph,
                    CustomDropdown(
                      hintText: 'selectStream'.tr(),
                      value: 'selectStream'.tr(),
                      items: [],
                      onChanged: (String? value) {},
                    ),
                    12.ph,
                    CustomSwitchWidget(
                      title: 'selfDestruction'.tr(),
                      value: state.selfDestruction,
                      onChanged: (val) {
                        cubit.toggleSelfDestruction();
                      },
                    ),
                    CustomText(
                        text: 'selfDestructionDesc'.tr(),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.grey),
                    12.ph,
                    CustomSwitchWidget(
                      title: 'bookLive'.tr(),
                      value: state.bookParticipation,
                      onChanged: (val) {
                        cubit.toggleBookParticipation();
                      },
                    ),
                    CustomText(
                        text: 'bookLiveDesc'.tr(),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.grey),
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
                            hintText: 'length'.tr(),
                          ),
                        ),
                        9.5.pw,
                        Expanded(
                          child: CustomTextField(
                            hintText: 'width'.tr(),
                          ),
                        ),
                        9.5.pw,
                        Expanded(
                          child: CustomTextField(
                            hintText: 'height'.tr(),
                          ),
                        ),
                      ],
                    ),
                    12.ph,
                    CustomTextField(
                      hintText: 'weight'.tr(),
                    ),
                    12.ph,
                    CustomDropdown(
                      hintText: 'deliveryOption'.tr(),
                      value: 'deliveryOption'.tr(),
                      items: [],
                      onChanged: (String? value) {},
                    ),
                    12.ph,
                    CustomSwitchWidget(
                      title: 'pickupFree'.tr(),
                      value: state.pickupFree,
                      onChanged: (val) {
                        cubit.togglePickupFree();
                      },
                    ),
                    24.ph,
                    CustomGradientButton(
                        text: 'save'.tr(), isDisabled: false, onPressed: () {}),
                    35.ph,
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
