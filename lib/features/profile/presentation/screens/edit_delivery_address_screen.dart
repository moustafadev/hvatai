part of '../profile.dart';

class EditDeliveryAddressScreen extends StatelessWidget {
  const EditDeliveryAddressScreen({
    super.key,
    required this.data,
  });
  final UserRegistrationData data;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeliveryAddressCubit, DeliveryAddressState>(
        builder: (context, state) {
      final cubit = context.read<DeliveryAddressCubit>();
      final user = state.user;
      return SafeArea(
        bottom: false,
        child: Scaffold(
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
                        value:
                            (user.country ?? '').isEmpty ? null : user.country,
                        onChanged: (v) => cubit.updateField('country', v ?? ''),
                        prefix: user.country == 'Russia'
                            ? const Text('🇷🇺')
                            : user.country == 'United States'
                                ? const Text('🇺🇸')
                                : user.country == 'India'
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
                        initialValue: user.city,
                        onChanged: (v) => cubit.updateField('city', v),
                        hintText: 'city'.tr(),
                        isRequired: false,
                        validator: (v) => v!.isEmpty ? 'enterCity'.tr() : null,
                      ),
                      20.ph,
                      CustomTextField(
                        isRequired: false,
                        hintText: 'street'.tr(),
                        key: ValueKey('street_${state.lastUpdated}'),
                        validator: (v) =>
                            v!.isEmpty ? 'enterStreet'.tr() : null,
                        onChanged: (v) => cubit.updateField('street', v),
                        initialValue: user.street,
                      ),
                      20.ph,
                      Row(
                        children: [
                          Expanded(
                            child: CustomTextField(
                              isRequired: false,
                              hintText: 'house'.tr(),
                              key: ValueKey('house_${state.lastUpdated}'),
                              validator: (v) =>
                                  v!.isEmpty ? 'enterHouse'.tr() : null,
                              onChanged: (v) => cubit.updateField('house', v),
                              initialValue: user.frontDoor,
                            ),
                          ),
                          10.pw,
                          Expanded(
                            child: CustomTextField(
                              key: ValueKey('apartment_${state.lastUpdated}'),
                              isRequired: false,
                              hintText: 'apartment'.tr(),
                              validator: (v) =>
                                  v!.isEmpty ? 'enterApartment'.tr() : null,
                              initialValue: user.apartment,
                              onChanged: (v) =>
                                  cubit.updateField('apartment', v),
                            ),
                          ),
                        ],
                      ),
                      20.ph,
                      Row(
                        children: [
                          Expanded(
                            child: CustomTextField(
                              key: ValueKey('entrance_${state.lastUpdated}'),
                              isRequired: false,
                              hintText: 'entrance'.tr(),
                              validator: (v) =>
                                  v!.isEmpty ? 'enterEntrance'.tr() : null,
                              onChanged: (v) =>
                                  cubit.updateField('entrance', v),
                              initialValue: user.floor,
                            ),
                          ),
                          10.pw,
                          Expanded(
                            child: CustomTextField(
                              key: ValueKey('index_${state.lastUpdated}'),
                              isRequired: false,
                              hintText: 'index'.tr(),
                              validator: (v) =>
                                  v!.isEmpty ? 'enterIndex'.tr() : null,
                              onChanged: (v) => cubit.updateField('index', v),
                              initialValue: user.intercomCode,
                            ),
                          ),
                        ],
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
                      24.ph,
                      CustomSwitchWidget(
                        title: 'makeItThePrimaryAddress'.tr(),
                        value: user.isPrimary == 1,
                        onChanged: (val) {
                          cubit.toggleMainAddress();
                          print({
                            'isPrimary ccccdssfddsfdsfsdfsfqweewfregrebfbvmcv':
                                user.isPrimary
                          });
                        },
                      ),
                      30.ph,
                      CustomGradientButton(
                        text: 'save'.tr(),
                        isLoading: state.isLoading,
                        isDisabled: !((state.user.city?.isNotEmpty ?? false) &&
                            (state.user.street?.isNotEmpty ?? false) &&
                            (state.user.country?.isNotEmpty ?? false) &&
                            (state.user.frontDoor?.isNotEmpty ?? false) &&
                            (state.user.apartment?.isNotEmpty ?? false) &&
                            (state.user.floor?.isNotEmpty ?? false) &&
                            (state.user.intercomCode?.isNotEmpty ?? false)),
                        onPressed: () => cubit.editNewAddress(context),
                      ),
                      20.ph,
                    ],
                  ),
                ),
              )),
        ),
      );
    });
  }
}
