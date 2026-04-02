part of '../../profile.dart';

class DeliverySettingsBottomSheet extends StatefulWidget {
  const DeliverySettingsBottomSheet({super.key});

  @override
  State<DeliverySettingsBottomSheet> createState() =>
      _DeliverySettingsBottomSheetState();
}

class _DeliverySettingsBottomSheetState
    extends State<DeliverySettingsBottomSheet> {
  bool _isFreePickupEnabled = false;
  final TextEditingController _pickupInstructionsController =
      TextEditingController();

  @override
  void dispose() {
    _pickupInstructionsController.dispose();
    super.dispose();
  }

  String _formatAddress(AddressModel address) {
    final parts = <String>[];
    if (address.city != null && address.city!.isNotEmpty) {
      parts.add(address.city!);
    }
    if (address.street != null && address.street!.isNotEmpty) {
      parts.add(address.street!);
    }
    if (address.apartment != null && address.apartment!.isNotEmpty) {
      parts.add(address.apartment!);
    }
    if (address.intercomCode != null && address.intercomCode!.isNotEmpty) {
      parts.add(address.intercomCode!);
    }
    if (address.floor != null && address.floor!.isNotEmpty) {
      parts.add(address.floor!);
    }
    if (address.frontDoor != null && address.frontDoor!.isNotEmpty) {
      parts.add(address.frontDoor!);
    }
    return parts.join(', ');
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          locator<DeliveryAddressCubit>()..getDeliveryAddress(),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.lightGreyBackground,
          borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
        ),
        child: SafeArea(
          top: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Drag handle
              4.ph,
              Center(
                child: Container(
                  height: 4.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    color: AppColors.gray,
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                ),
              ),
              20.ph,
              // Title
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomText(
                  text: 'Настройки доставки',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w800,
                  color: AppColors.blackDark,
                ),
              ),
              24.ph,
              // Content
              Expanded(
                child: BlocBuilder<DeliveryAddressCubit, DeliveryAddressState>(
                  builder: (context, addressState) {
                    final cubit = context.read<DeliveryAddressCubit>();

                    if (addressState.isLoading) {
                      return const Center(
                        child: CircularProgressIndicator(
                          color: AppColors.grey,
                        ),
                      );
                    }

                    return SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Бесплатный самовывоз section
                          Row(
                            children: [
                              Expanded(
                                child: CustomText(
                                  text: 'Бесплатный самовывоз',
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.blackDark,
                                ),
                              ),
                              CupertinoSwitch(
                                value: _isFreePickupEnabled,
                                activeTrackColor: AppColors.primary,
                                onChanged: (value) {
                                  setState(() {
                                    _isFreePickupEnabled = value;
                                  });
                                },
                              ),
                            ],
                          ),
                          8.ph,
                          CustomText(
                            text:
                                'Разрешите покупателям получать заказы на стримах и торговой площадке.',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.grey,
                          ),
                          24.ph,
                          // Адрес доставки section
                          CustomText(
                            text: 'Адрес доставки',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.blackDark,
                          ),
                          16.ph,
                          // Address list
                          if (addressState.deliveryModel.isNotEmpty)
                            ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: addressState.deliveryModel.length,
                              separatorBuilder: (_, __) => Divider(
                                thickness: 1,
                                color: AppColors.gray,
                                height: 12.h,
                              ),
                              itemBuilder: (context, index) {
                                final address =
                                    addressState.deliveryModel[index];
                                return CustomSwipeableListTitle(
                                  onDelete: () {
                                    CustomDialog.show(
                                      context,
                                      title: 'deleteAddress'.tr(),
                                      content: 'deleteAddressMessage'.tr(),
                                      confirmText: 'delete'.tr(),
                                      isDestructive: true,
                                      onConfirm: () {
                                        cubit.deleteAddress(
                                            address.id!, context);
                                        Navigator.of(context).pop();
                                      },
                                    );
                                  },
                                  contentPadding: EdgeInsets.zero,
                                  leading: Image.asset(
                                    height: 26.h,
                                    width: 26.w,
                                    Assets.assetsIconsDelivery,
                                  ),
                                  title: CustomText(
                                    text: _formatAddress(address),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  trailing: Icon(
                                    Icons.chevron_right,
                                    color: AppColors.blackDark,
                                    size: 28,
                                  ),
                                  onTap: () async {
                                    final updatedAddress = await context
                                        .push<UserRegistrationData>(
                                      AppRoutes.newAddress,
                                    );
                                    if (updatedAddress != null) {
                                      cubit.getDeliveryAddress();
                                    }
                                  },
                                );
                              },
                            ),
                          if (addressState.deliveryModel.isNotEmpty)
                            Divider(
                              thickness: 1,
                              color: AppColors.gray,
                              height: 12.h,
                            ),
                          // Add new address
                          ListTile(
                            onTap: () async {
                              await context.push<UserRegistrationData>(
                                AppRoutes.deliveryAddressForm,
                                extra: {
                                  'mode': AddressFormMode.add,
                                },
                              );

                              if (context.mounted) {
                                cubit.getDeliveryAddress();
                              }
                            },
                            contentPadding: EdgeInsets.zero,
                            leading: Image.asset(
                              height: 21.h,
                              width: 21.w,
                              Assets.assetsIconsMapPoint,
                            ),
                            title: CustomText(
                              text: 'Добавить новый адрес',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            trailing: Icon(
                              Icons.chevron_right,
                              color: AppColors.blackDark,
                              size: 28,
                            ),
                          ),
                          Divider(
                            thickness: 1,
                            color: AppColors.gray,
                            height: 12.h,
                          ),
                          24.ph,
                          // Адрес получения section
                          CustomText(
                            text: 'Адрес получения',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.blackDark,
                          ),
                          8.ph,
                          CustomText(
                            text:
                                'Сообщите покупателям, как с вами связаться и когда можно забрать товар',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.grey,
                          ),
                          12.ph,
                          CustomTextField(
                            hintText: 'Инструкции для покупателей',
                            controller: _pickupInstructionsController,
                            maxLines: 5,
                            isRequired: false,
                          ),
                          24.ph,
                        ],
                      ),
                    );
                  },
                ),
              ),
              // Save button
              Padding(
                padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
                child: CustomGradientButton(
                  text: 'Сохранить',
                  onPressed: () {
                    // TODO: Save delivery settings
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void showDeliverySettingsBottomSheet(BuildContext context) {
  final screenHeight = MediaQuery.of(context).size.height;
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
    ),
    builder: (context) => Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SizedBox(
        height: screenHeight * 0.75,
        child: const DeliverySettingsBottomSheet(),
      ),
    ),
  );
}
