part of '../address.dart';

enum AddressFormMode { add, edit }

class DeliveryAddressFormScreen extends StatelessWidget {
  const DeliveryAddressFormScreen({
    super.key,
    required this.mode,
    this.initialAddress,
  });

  final AddressFormMode mode;
  final UserRegistrationData? initialAddress; // for edit

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<AddressFormCubit>()
        ..init(mode: mode, initial: initialAddress),
      child: BlocBuilder<AddressFormCubit, AddressFormState>(
        builder: (context, state) {
          final cubit = context.read<AddressFormCubit>();
          final user = state.user;

          return Scaffold(
            backgroundColor: AppColors.background,
            appBar: AppBar(
              backgroundColor: AppColors.background,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios,
                    color: AppColors.blackColorIcon),
                onPressed: () => context.pop(),
              ),
              centerTitle: true,
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: AbsorbPointer(
                absorbing: state.isLoading,
                child: Form(
                  key: cubit.formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'deliveryAddress'.tr(),
                          fontWeight: FontWeight.w800,
                          fontSize: 20.sp,
                        ),
                        20.ph,
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: AppColors.boxShadowTextField,
                          ),
                          child: CustomDropdown(
                            hintText: 'country'.tr(),
                            value: (user.country ?? '').isEmpty
                                ? null
                                : user.country,
                            onChanged: (v) =>
                                cubit.updateField('country', v ?? ''),
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
                        ),
                        20.ph,
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: AppColors.boxShadowTextField,
                          ),
                          child: CustomTextField(
                            key: ValueKey('city_${state.lastUpdated}'),
                            initialValue: user.city,
                            onChanged: (v) => cubit.updateField('city', v),
                            hintText: 'city'.tr(),
                            isRequired: false,
                            validator: (v) =>
                                (v ?? '').isEmpty ? 'enterCity'.tr() : null,
                          ),
                        ),
                        20.ph,
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: AppColors.boxShadowTextField,
                          ),
                          child: CustomTextField(
                            key: ValueKey('street_${state.lastUpdated}'),
                            initialValue: user.street,
                            onChanged: (v) => cubit.updateField('street', v),
                            hintText: 'street'.tr(),
                            isRequired: false,
                            validator: (v) =>
                                (v ?? '').isEmpty ? 'enterStreet'.tr() : null,
                          ),
                        ),
                        20.ph,
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: AppColors.boxShadowTextField,
                                ),
                                child: CustomTextField(
                                  key: ValueKey('house_${state.lastUpdated}'),
                                  initialValue: user.floor,
                                  onChanged: (v) =>
                                      cubit.updateField('house', v),
                                  hintText: 'house'.tr(),
                                  isRequired: false,
                                  validator: (v) => (v ?? '').isEmpty
                                      ? 'enterHouse'.tr()
                                      : null,
                                ),
                              ),
                            ),
                            10.pw,
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: AppColors.boxShadowTextField,
                                ),
                                child: CustomTextField(
                                  key: ValueKey(
                                      'apartment_${state.lastUpdated}'),
                                  initialValue: user.apartment,
                                  onChanged: (v) =>
                                      cubit.updateField('apartment', v),
                                  hintText: 'apartment'.tr(),
                                  isRequired: false,
                                ),
                              ),
                            ),
                          ],
                        ),
                        20.ph,
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: AppColors.boxShadowTextField,
                                ),
                                child: CustomTextField(
                                  key:
                                      ValueKey('entrance_${state.lastUpdated}'),
                                  initialValue: user.frontDoor,
                                  onChanged: (v) =>
                                      cubit.updateField('entrance', v),
                                  hintText: 'entrance'.tr(),
                                  isRequired: false,
                                  validator: (v) => (v ?? '').isEmpty
                                      ? 'enterEntrance'.tr()
                                      : null,
                                ),
                              ),
                            ),
                            10.pw,
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: AppColors.boxShadowTextField,
                                ),
                                child: CustomTextField(
                                  key: ValueKey('index_${state.lastUpdated}'),
                                  initialValue: user.intercomCode,
                                  onChanged: (v) =>
                                      cubit.updateField('index', v),
                                  hintText: 'index'.tr(),
                                  isRequired: false,
                                  validator: (v) => (v ?? '').isEmpty
                                      ? 'enterIndex'.tr()
                                      : null,
                                ),
                              ),
                            ),
                          ],
                        ),
                        24.ph,
                        CustomSwitchWidget(
                          title: 'makeItThePrimaryAddress'.tr(),
                          value: (user.isPrimary ?? 0) == 1,
                          onChanged: (_) => cubit.toggleMainAddress(),
                        ),
                        18.ph,
                        GestureDetector(
                          onTap: cubit.addMyLocation,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(Assets.assetsIconsMapPin),
                              10.pw,
                              CustomText(
                                text: 'fillAutomatically'.tr(),
                                color: AppColors.purple1,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w800,
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
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
