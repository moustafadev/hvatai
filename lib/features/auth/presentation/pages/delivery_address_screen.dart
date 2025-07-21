part of '../auth.dart';

class DeliveryAddressScreen extends StatelessWidget {
  final UserRegistrationData data;

  const DeliveryAddressScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<DeliveryAddressCubit>()
        ..initRegistrationModel(data)
        ..prefill(data.country),
      child: Scaffold(
        backgroundColor: AppColors.grey100,
        appBar: AppBar(
          backgroundColor: AppColors.grey100,
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
              onPressed: () => context.replaceNamed(AppRoutes.login),
              tooltip: 'close'.tr(),
              color: AppColors.blackDark,
            ),
          ],
        ),
        body: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: BlocBuilder<DeliveryAddressCubit, DeliveryAddressState>(
              builder: (context, state) {
                final cubit = context.read<DeliveryAddressCubit>();
                return Form(
                  key: cubit.formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        20.ph,
                        CustomDropdown(
                          hintText: 'country'.tr(),
                          value: cubit.state.country.isEmpty
                              ? null
                              : cubit.state.country,
                          onChanged: (v) =>
                              cubit.updateField('country', v ?? ''),
                          prefix: cubit.state.country == 'Russia'
                              ? const Text('🇷🇺')
                              : cubit.state.country == 'USA'
                                  ? const Text('🇺🇸')
                                  : cubit.state.country == 'India'
                                      ? const Text('🇮🇳')
                                      : null,
                          items: const ['Russia', 'USA', 'India']
                              .map((val) => DropdownMenuItem<String>(
                                    value: val,
                                    child: Text(val),
                                  ))
                              .toList(),
                        ),
                        20.ph,
                        CustomTextField(
                          hintText: 'city'.tr(),
                          isRequired: false,
                          validator: (v) =>
                              v!.isEmpty ? 'enterCity'.tr() : null,
                          onChanged: (v) => cubit.updateField('city', v),
                          controller: TextEditingController(text: state.city),
                        ),
                        20.ph,
                        CustomTextField(
                          isRequired: false,
                          hintText: 'street'.tr(),
                          validator: (v) =>
                              v!.isEmpty ? 'enterStreet'.tr() : null,
                          onChanged: (v) => cubit.updateField('street', v),
                          controller: TextEditingController(text: state.street),
                        ),
                        20.ph,
                        Row(
                          children: [
                            Expanded(
                              child: CustomTextField(
                                isRequired: false,
                                hintText: 'house'.tr(),
                                validator: (v) =>
                                    v!.isEmpty ? 'enterHouse'.tr() : null,
                                onChanged: (v) => cubit.updateField('house', v),
                                controller:
                                    TextEditingController(text: state.house),
                              ),
                            ),
                            10.pw,
                            Expanded(
                              child: CustomTextField(
                                isRequired: false,
                                hintText: 'apartment'.tr(),
                                onChanged: (v) =>
                                    cubit.updateField('apartment', v),
                                controller: TextEditingController(
                                    text: state.apartment),
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
                                onChanged: (v) =>
                                    cubit.updateField('entrance', v),
                                controller:
                                    TextEditingController(text: state.entrance),
                              ),
                            ),
                            10.pw,
                            Expanded(
                              child: CustomTextField(
                                isRequired: false,
                                hintText: 'index'.tr(),
                                validator: (v) =>
                                    v!.isEmpty ? 'enterIndex'.tr() : null,
                                onChanged: (v) => cubit.updateField('index', v),
                                controller:
                                    TextEditingController(text: state.index),
                              ),
                            ),
                          ],
                        ),
                        18.ph,
                        GestureDetector(
                          onTap: () async {
                            final cubit = context.read<DeliveryAddressCubit>();

                            try {
                              final position = await cubit.determinePosition();
                              if (position == null) return;

                              final addressData =
                                  await cubit.getAddressFromPosition(position);

                              // ✅ استبدال القيم المرسلة من الشاشة السابقة بالقيم الجديدة من الموقع
                              cubit.updateField(
                                  'country', addressData['country']!);
                              cubit.updateField('city', addressData['city']!);
                              cubit.updateField(
                                  'street', addressData['street']!);
                              cubit.updateField('index', addressData['index']!);
                            } catch (e) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content:
                                        Text('Error getting location: $e')),
                              );
                            }
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
                            isLoading: cubit.state.isLoading,
                            isDisabled: !(cubit.state.apartment.isNotEmpty &&
                                cubit.state.city.isNotEmpty &&
                                cubit.state.entrance.isNotEmpty &&
                                cubit.state.house.isNotEmpty &&
                                cubit.state.index.isNotEmpty &&
                                cubit.state.street.isNotEmpty &&
                                cubit.state.country.isNotEmpty),
                            onPressed: () {
                              cubit.submit(context);
                            }),
                        20.ph,
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
