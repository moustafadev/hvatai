part of '../address.dart';

class AddDeliveryAddressScreen extends StatelessWidget {
  const AddDeliveryAddressScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeliveryAddressCubit, DeliveryAddressState>(
        builder: (context, state) {
      final cubit = context.read<DeliveryAddressCubit>();
      final address = state.address;
      return Scaffold(
        backgroundColor: AppColors.lightGreyBackground,
        appBar: AppBar(
          backgroundColor: AppColors.lightGreyBackground,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios,
                  color: AppColors.blackColorIcon),
              onPressed: () => context.pop()),
          centerTitle: true,
          title: CustomText(
            text: 'deliveryAddress'.tr(),
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.blackDark,
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Form(
              key: cubit.formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    20.ph,
                    CustomDropdown(
                      hintText: 'country'.tr(),
                      value: (address.country ?? '').isEmpty
                          ? null
                          : address.country,
                      onChanged: (v) => cubit.updateField('country', v ?? ''),
                      prefix: address.country == 'Russia'
                          ? const Text('🇷🇺')
                          : address.country == 'United States'
                              ? const Text('🇺🇸')
                              : address.country == 'India'
                                  ? const Text('🇮🇳')
                                  : null,
                      items: const ['Russia', 'United States', 'India']
                          .map((val) => DropdownMenuItem<String>(
                                value: val,
                                child: Text(val),
                              ))
                          .toList(),
                    ),
                    20.ph,
                    CustomTextField(
                      key: ValueKey('city_${state.lastUpdated}'),
                      onChanged: (v) => cubit.updateField('city', v),
                      initialValue: address.city,
                      hintText: 'city'.tr(),
                      isRequired: false,
                      validator: (v) => v!.isEmpty ? 'enterCity'.tr() : null,
                    ),
                    20.ph,
                    CustomTextField(
                      key: ValueKey('street_${state.lastUpdated}'),
                      isRequired: false,
                      hintText: 'street'.tr(),
                      validator: (v) => v!.isEmpty ? 'enterStreet'.tr() : null,
                      onChanged: (v) => cubit.updateField('street', v),
                      initialValue: address.street,
                    ),
                    20.ph,
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            key: ValueKey('house_${state.lastUpdated}'),
                            isRequired: false,
                            hintText: 'house'.tr(),
                            validator: (v) =>
                                v!.isEmpty ? 'enterHouse'.tr() : null,
                            onChanged: (v) => cubit.updateField('house', v),
                            initialValue: address.frontDoor,
                          ),
                        ),
                        10.pw,
                        Expanded(
                          child: CustomTextField(
                            isRequired: false,
                            key: ValueKey('apartment_${state.lastUpdated}'),
                            hintText: 'apartment'.tr(),
                            onChanged: (v) => cubit.updateField('apartment', v),
                            initialValue: address.apartment,
                          ),
                        ),
                      ],
                    ),
                    20.ph,
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            isRequired: false,
                            hintText: 'entrance'.tr(),
                            key: ValueKey('entrance_${state.lastUpdated}'),
                            validator: (v) =>
                                v!.isEmpty ? 'enterEntrance'.tr() : null,
                            onChanged: (v) => cubit.updateField('entrance', v),
                            initialValue: address.floor,
                          ),
                        ),
                        10.pw,
                        Expanded(
                          child: CustomTextField(
                            isRequired: false,
                            key: ValueKey('index_${state.lastUpdated}'),
                            hintText: 'index'.tr(),
                            validator: (v) =>
                                v!.isEmpty ? 'enterIndex'.tr() : null,
                            onChanged: (v) => cubit.updateField('index', v),
                            initialValue: address.intercomCode,
                          ),
                        ),
                      ],
                    ),
                    24.ph,
                    CustomSwitchWidget(
                      title: 'makeItThePrimaryAddress'.tr(),
                      value: address.isPrimary == 1,
                      onChanged: (val) {
                        cubit.toggleMainAddress();
                      },
                    ),
                    18.ph,
                    GestureDetector(
                      onTap: () {
                        cubit.addMyLocation();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(Assets.assetsIconsMapPin),
                          10.pw,
                          CustomText(
                            text: 'fillAutomatically'.tr(),
                            color: AppColors.purple1,
                          )
                        ],
                      ),
                    ),
                    30.ph,
                    CustomGradientButton(
                      text: 'save'.tr(),
                      isLoading: state.isLoading,
                      isDisabled: !((address.city?.isNotEmpty ?? false) &&
                          (address.street?.isNotEmpty ?? false) &&
                          (address.country?.isNotEmpty ?? false) &&
                          (address.frontDoor?.isNotEmpty ?? false) &&
                          (address.apartment?.isNotEmpty ?? false) &&
                          (address.floor?.isNotEmpty ?? false) &&
                          (address.intercomCode?.isNotEmpty ?? false)),
                      onPressed: () => cubit.updateAddress(context),
                    ),
                    20.ph,
                  ],
                ),
              ),
            )),
      );
    });
  }
}
