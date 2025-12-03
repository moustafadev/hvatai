// ignore_for_file: invalid_use_of_visible_for_testing_member

part of '../auth.dart';

class DeliveryAddressScreen extends StatelessWidget {
  const DeliveryAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<AddAddressCubit>(),
      child: BlocBuilder<AddAddressCubit, AddAddressState>(
        builder: (context, state) {
          final cubit = context.read<AddAddressCubit>();
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
              actions: [
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => context.push(AppRoutes.login),
                  tooltip: 'close'.tr(),
                  color: AppColors.blackDark,
                ),
              ],
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
                      initialValue: address.city ?? '',
                      hintText: 'city'.tr(),
                      key: ValueKey('city_${state.lastUpdated}'),
                      onChanged: (v) => cubit.updateField('city', v),
                      validator: (v) => v!.isEmpty ? 'enterCity'.tr() : null,
                    ),
                    20.ph,
                    CustomTextField(
                      initialValue: address.street ?? '',
                      onChanged: (v) => cubit.updateField('street', v),
                      hintText: 'street'.tr(),
                      key: ValueKey('street_${state.lastUpdated}'),
                      validator: (v) => v!.isEmpty ? 'enterStreet'.tr() : null,
                    ),
                    20.ph,
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            initialValue: address.frontDoor ?? '',
                            hintText: 'house'.tr(),
                            key: ValueKey('house_${state.lastUpdated}'),
                            onChanged: (v) => cubit.updateField('house', v),
                            validator: (v) =>
                                v!.isEmpty ? 'enterHouse'.tr() : null,
                          ),
                        ),
                        10.pw,
                        Expanded(
                          child: CustomTextField(
                            initialValue: address.apartment ?? '',
                            key: ValueKey('apartment_${state.lastUpdated}'),
                            onChanged: (v) => cubit.updateField('apartment', v),
                            validator: (v) =>
                                v!.isEmpty ? 'enterApartment'.tr() : null,
                            hintText: 'apartment'.tr(),
                          ),
                        ),
                      ],
                    ),
                    20.ph,
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            initialValue: address.floor ?? '',
                            key: ValueKey('entrance_${state.lastUpdated}'),
                            onChanged: (v) => cubit.updateField('entrance', v),
                            validator: (v) =>
                                v!.isEmpty ? 'enterEntrance'.tr() : null,
                            hintText: 'entrance'.tr(),
                          ),
                        ),
                        10.pw,
                        Expanded(
                          child: CustomTextField(
                            initialValue: address.intercomCode ?? '',
                            key: ValueKey('index_${state.lastUpdated}'),
                            onChanged: (v) => cubit.updateField('index', v),
                            validator: (v) =>
                                v!.isEmpty ? 'enterIndex'.tr() : null,
                            hintText: 'index'.tr(),
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
                    30.ph,
                    CustomGradientButton(
                      text: 'save'.tr(),
                      isLoading: state.isLoading,
                      isDisabled: !cubit.isFormValid,
                      onPressed: () => cubit.submit(context),
                    ),
                    20.ph,
                  ],
                )),
              ),
            ),
          );
        },
      ),
    );
  }
}
