part of '../address.dart';

class InitNewAddressScreen extends StatelessWidget {
  const InitNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<DeliveryAddressCubit>()..getDeliveryAddress(),
      child: BlocBuilder<DeliveryAddressCubit, DeliveryAddressState>(
        builder: (context, state) {
          final cubit = context.read<DeliveryAddressCubit>();
          if (state.isLoading) {
            return Scaffold(
              body: Center(child: CustomCircularProgrressIndicator()),
            );
          }

          if (state.errorMessage.isNotEmpty) {
            return Center(child: Text(state.errorMessage));
          }

          return Scaffold(
            backgroundColor: AppColors.background,
            appBar: AppBar(
              backgroundColor: AppColors.background,
              leading: IconButton(
                icon:
                    Icon(Icons.arrow_back_ios, color: AppColors.blackColorIcon),
                onPressed: () {
                  context.pop();
                },
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'deliveryAddress'.tr(),
                      fontWeight: FontWeight.w800,
                      fontSize: 20.sp,
                    ),
                    24.ph,
                    ListView.separated(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.deliveryModel.length,
                      separatorBuilder: (_, __) => Divider(
                        thickness: 1,
                        color: AppColors.greyButton,
                        height: 12.h,
                      ),
                      itemBuilder: (context, index) {
                        final address = state.deliveryModel[index];
                        return CustomSwipeableListTitle(
                          onDelete: () {
                            CustomDialog.show(
                              context,
                              title: 'deleteAddress'.tr(),
                              content: 'deleteAddressMessage'.tr(),
                              confirmText: 'delete'.tr(),
                              isDestructive: true,
                              onConfirm: () {
                                cubit.deleteAddress(address.id!, context);
                                context.pop();
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
                            text:
                                '${address.city}, ${address.street}, ${address.apartment}, ${address.intercomCode}, ${address.floor}, ${address.frontDoor}',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          trailing: Icon(
                            Icons.chevron_right,
                            color: AppColors.blackDark,
                            size: 28,
                          ),
                          onTap: () async {
                            final updatedAddress =
                                await context.push<UserRegistrationData>(
                              AppRoutes.editDeliveryAddress,
                              extra: {
                                'model': state.deliveryModel[index]
                                    .toUserRegistrationData(),
                              },
                            );
                            if (updatedAddress != null) {
                              cubit.getDeliveryAddress();
                            }
                          },
                        );
                      },
                    ),
                    Divider(
                      thickness: 1,
                      color: AppColors.greyButton,
                      height: 12.h,
                    ),
                    ListTile(
                      onTap: () async {
                        final updatedAddress =
                            await context.push<UserRegistrationData>(
                          AppRoutes.deliveryAddressForm,
                          extra: {
                            'mode': AddressFormMode.add,
                          },
                        );

                        if (updatedAddress != null) {
                          cubit.getDeliveryAddress();
                        }
                      },
                      contentPadding: EdgeInsets.all(0),
                      leading: Image.asset(
                        height: 21.h,
                        width: 21.w,
                        Assets.assetsIconsMapPoint,
                      ),
                      title: CustomText(
                        text: 'addNewAddress'.tr(),
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
                      color: AppColors.greyButton,
                      height: 12.h,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
