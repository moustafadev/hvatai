part of '../profile.dart';

class AddDeliveryAddressScreen extends StatelessWidget {
  const AddDeliveryAddressScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateDeliveryAddressCubit, UpdateDeliveryAddressState>(
        builder: (context, state) {
      final cubit = context.read<UpdateDeliveryAddressCubit>();
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
                        controller: cubit.controllers['city'],
                        hintText: 'city'.tr(),
                        isRequired: false,
                        validator: (v) => v!.isEmpty ? 'enterCity'.tr() : null,
                      ),
                      20.ph,
                      CustomTextField(
                        isRequired: false,
                        hintText: 'street'.tr(),
                        validator: (v) =>
                            v!.isEmpty ? 'enterStreet'.tr() : null,
                        controller: cubit.controllers['street'],
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
                              controller: cubit.controllers['house'],
                            ),
                          ),
                          10.pw,
                          Expanded(
                            child: CustomTextField(
                              isRequired: false,
                              hintText: 'apartment'.tr(),
                              controller: cubit.controllers['apartment'],
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
                              controller: cubit.controllers['entrance'],
                            ),
                          ),
                          10.pw,
                          Expanded(
                            child: CustomTextField(
                              isRequired: false,
                              hintText: 'index'.tr(),
                              validator: (v) =>
                                  v!.isEmpty ? 'enterIndex'.tr() : null,
                              controller: cubit.controllers['index'],
                            ),
                          ),
                        ],
                      ),
                      24.ph,
                      CustomSwitchWidget(
                        title: 'makeItThePrimaryAddress'.tr(),
                        value: state.user.isPrimary == 1,
                        onChanged: (val) {
                          cubit.toggleMainAddress();
                        },
                      ),
                      18.ph,
                      GestureDetector(
                        onTap: () async {
                          final cubit =
                              context.read<UpdateDeliveryAddressCubit>();

                          try {
                            final position = await cubit.determinePosition();
                            if (position == null) return;

                            final addressData =
                                await cubit.getAddressFromPosition(position);

                            cubit.updateField(
                                'country', addressData['country']!);
                            cubit.updateField('city', addressData['city']!);
                            cubit.updateField('street', addressData['street']!);
                            cubit.updateField('index', addressData['index']!);
                          } catch (e) {
                            floatingSnackBar(
                                message: e.toString(), context: context);
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
                        isLoading: state.isLoading,
                        isDisabled: ![
                          user.apartment,
                          user.city,
                          user.floor,
                          user.frontDoor,
                          user.intercomCode,
                          user.street,
                          user.country,
                        ].every((field) => (field ?? '').isNotEmpty),
                        onPressed: () => cubit.submit(context),
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
