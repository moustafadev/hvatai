part of '../profile.dart';

class InitNewAddress extends StatelessWidget {
  const InitNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          locator<UpdateDeliveryAddressCubit>()..getDeliveryAddress(),
      child:
          BlocBuilder<UpdateDeliveryAddressCubit, UpdateDeliveryAddressState>(
        builder: (context, state) {
          if (state.isLoading || state.deliveryModel.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(
                color: AppColors.grey,
              ),
            );
          }

          return SafeArea(
            bottom: false,
            child: Scaffold(
              backgroundColor: AppColors.lightGreyBackground,
              appBar: AppBar(
                backgroundColor: AppColors.lightGreyBackground,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios,
                      color: AppColors.blackColorIcon),
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
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.deliveryModel.length,
                        separatorBuilder: (_, __) => Divider(
                          thickness: 1,
                          color: AppColors.gray,
                          height: 12.h,
                        ),
                        itemBuilder: (context, index) {
                          final address = state.deliveryModel[index];
                          return ListTile(
                            contentPadding: EdgeInsets.all(0),
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
                              final updated = await context.push<bool>(
                                AppRoutes.editDeliveryAddress,
                                extra: state.deliveryModel[index],
                              );
                              if (updated == true) {
                                context
                                    .read<UpdateDeliveryAddressCubit>()
                                    .getDeliveryAddress();
                              }
                            },
                          );
                        },
                      ),
                      Divider(
                        thickness: 1,
                        color: AppColors.gray,
                        height: 12.h,
                      ),
                      ListTile(
                        onTap: () async {
                          final updated = await context.push<bool>(
                            AppRoutes.addDeliveryAddress,
                          );

                          if (updated == true) {
                            context
                                .read<UpdateDeliveryAddressCubit>()
                                .getDeliveryAddress();
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
                        color: AppColors.gray,
                        height: 12.h,
                      ),
                    ],
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
