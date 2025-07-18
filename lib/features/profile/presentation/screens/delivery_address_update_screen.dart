part of '../profile.dart';

class DeliveryAddressUpdateScreen extends StatelessWidget {
  const DeliveryAddressUpdateScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: AppColors.blackColorIcon),
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: BlocProvider(
          create: (context) => locator<UpdateDeliveryAddressCubit>(),
          child: BlocBuilder<UpdateDeliveryAddressCubit,
              UpdateDeliveryAddressState>(
            builder: (context, state) {
              final cubit = context.read<UpdateDeliveryAddressCubit>();
              return Form(
                key: cubit.formKey,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      21.ph,
                      CustomText(
                        text: 'newAddress'.tr(),
                        fontWeight: FontWeight.w800,
                        fontSize: 20.sp,
                      ),
                      24.ph,
                      CustomDropdown(
                        hintText: 'country'.tr(),
                        value: cubit.state.country.isEmpty
                            ? null
                            : cubit.state.country,
                        onChanged: (v) => cubit.updateField('country', v ?? ''),
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
                        validator: (v) => v!.isEmpty ? 'enterCity'.tr() : null,
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
                              controller:
                                  TextEditingController(text: state.apartment),
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
                      24.ph,
                      CustomSwitchWidget(
                        title: 'Make it the primary address'.tr(),
                        value: state.doNewAddress,
                        onChanged: (val) {
                          cubit.toggleNewAddress();
                        },
                      ),
                      18.ph,
                      Row(
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
                      30.ph,
                      CustomGradientButton(
                          text: 'continue'.tr(),
                          isDisabled: cubit.state.apartment.isNotEmpty &&
                              cubit.state.city.isNotEmpty &&
                              cubit.state.entrance.isNotEmpty &&
                              cubit.state.house.isNotEmpty &&
                              cubit.state.index.isNotEmpty &&
                              cubit.state.street.isNotEmpty &&
                              cubit.state.country.isNotEmpty,
                          onPressed: () {}),
                      20.ph,
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
