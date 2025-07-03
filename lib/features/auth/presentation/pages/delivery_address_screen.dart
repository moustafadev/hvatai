part of '../auth.dart';

class DeliveryAddressScreen extends StatelessWidget {
  final UserRegistrationData data;

  const DeliveryAddressScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<DeliveryAddressCubit>()..prefill(data.country),
      child: Scaffold(
        backgroundColor: AppColors.grey100,
        appBar: AppBar(
          backgroundColor: AppColors.grey100,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios,
                  color: AppColors.blackColorIcon),
              onPressed: () => GoRouter.of(context).pop()),
          centerTitle: true,
          title: CustomText(
            text: 'deliveryAddress'.tr(),
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.blackDark,
          ),
          actions: [
            // TextButton(
            //   onPressed: () {
            //     context.read<DeliveryAddressCubit>().submit(context, data);
            //   },
            //   child: Row(
            //     children: [
            //       CustomText(
            //         text: 'skip'.tr(),
            //         fontSize: 16.sp,
            //         color: AppColors.eerieBlack,
            //       ),
            //       const Icon(Icons.arrow_forward_ios),
            //     ],
            //   ),
            // ),
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () => GoRouter.of(context).pop(),
              tooltip: 'close'.tr(),
              color: AppColors.blackDark,
            ),
          ],
        ),
        body: SafeArea(
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
                        SizedBox(height: 20.h),
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
                        // CustomTextField(
                        //   hintText: 'country'.tr(),
                        //   readOnly: true,
                        //   suffixIcon: IconButton(
                        //     icon: SvgPicture.asset(Assets.assetsIconsLock),
                        //     onPressed: null,
                        //   ),
                        //   validator: (v) =>
                        //       v!.isEmpty ? 'enterCountry'.tr() : null,
                        //   onChanged: (v) => cubit.updateField('country', v),
                        //   controller:
                        //       TextEditingController(text: state.country),
                        // ),
                        SizedBox(height: 20.h),
                        CustomTextField(
                          hintText: 'city'.tr(),
                          isRequired: false,
                          validator: (v) =>
                              v!.isEmpty ? 'enterCity'.tr() : null,
                          onChanged: (v) => cubit.updateField('city', v),
                          controller: TextEditingController(text: state.city),
                        ),
                        SizedBox(height: 20.h),
                        CustomTextField(
                          isRequired: false,
                          hintText: 'street'.tr(),
                          validator: (v) =>
                              v!.isEmpty ? 'enterStreet'.tr() : null,
                          onChanged: (v) => cubit.updateField('street', v),
                          controller: TextEditingController(text: state.street),
                        ),
                        SizedBox(height: 20.h),
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
                            SizedBox(width: 10.w),
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
                        SizedBox(height: 20.h),
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
                            SizedBox(width: 10.w),
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
                        SizedBox(
                          height: 18.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(Assets.assetsIconsMapPin),
                            SizedBox(
                              width: 10.w,
                            ),
                            CustomText(
                              text: 'fillAutomatically'.tr(),
                              color: AppColors.purple1,
                            )
                          ],
                        ),
                        SizedBox(height: 30.h),
                        CustomGradientButton(
                          text: 'save'.tr(),
                          isDisabled: cubit.state.apartment.isNotEmpty &&
                              cubit.state.city.isNotEmpty &&
                              cubit.state.entrance.isNotEmpty &&
                              cubit.state.house.isNotEmpty &&
                              cubit.state.index.isNotEmpty &&
                              cubit.state.street.isNotEmpty &&
                              cubit.state.country.isNotEmpty,
                          onPressed: () => context
                              .read<DeliveryAddressCubit>()
                              .submit(context, data),
                        ),
                        SizedBox(height: 20.h),
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
