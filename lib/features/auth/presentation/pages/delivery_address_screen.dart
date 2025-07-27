// ignore_for_file: invalid_use_of_visible_for_testing_member

part of '../auth.dart';

class DeliveryAddressScreen extends StatelessWidget {
  final UserRegistrationData data;

  const DeliveryAddressScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<DeliveryAddressCubit>()
        ..prefill(data.country)
        ..initRegistrationModel(data),
      child: BlocBuilder<DeliveryAddressCubit, DeliveryAddressState>(
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
                        initialValue: user.city ?? '',
                        hintText: 'city'.tr(),
                        key: ValueKey('city_${state.lastUpdated}'),
                        onChanged: (v) => cubit.updateField('city', v),
                        validator: (v) => v!.isEmpty ? 'enterCity'.tr() : null,
                      ),
                      20.ph,
                      CustomTextField(
                        initialValue: user.street ?? '',
                        onChanged: (v) => cubit.updateField('street', v),
                        hintText: 'street'.tr(),
                        key: ValueKey('street_${state.lastUpdated}'),
                        validator: (v) =>
                            v!.isEmpty ? 'enterStreet'.tr() : null,
                      ),
                      20.ph,
                      Row(
                        children: [
                          Expanded(
                            child: CustomTextField(
                              initialValue: user.frontDoor ?? '',
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
                              initialValue: user.apartment ?? '',
                              key: ValueKey('apartment_${state.lastUpdated}'),
                              onChanged: (v) =>
                                  cubit.updateField('apartment', v),
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
                              initialValue: user.floor ?? '',
                              key: ValueKey('entrance_${state.lastUpdated}'),
                              onChanged: (v) =>
                                  cubit.updateField('entrance', v),
                              validator: (v) =>
                                  v!.isEmpty ? 'enterEntrance'.tr() : null,
                              hintText: 'entrance'.tr(),
                            ),
                          ),
                          10.pw,
                          Expanded(
                            child: CustomTextField(
                              initialValue: user.intercomCode ?? '',
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
                        isDisabled: !((state.user.city?.isNotEmpty ?? false) &&
                            (state.user.street?.isNotEmpty ?? false) &&
                            (state.user.country?.isNotEmpty ?? false) &&
                            (state.user.frontDoor?.isNotEmpty ?? false) &&
                            (state.user.apartment?.isNotEmpty ?? false) &&
                            (state.user.floor?.isNotEmpty ?? false) &&
                            (state.user.intercomCode?.isNotEmpty ?? false)),
                        onPressed: () => cubit.submit(context),
                      ),
                      20.ph,
                    ],
                  )),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
