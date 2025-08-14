part of '../profile.dart';

class PaymentMethodsScreen extends StatelessWidget {
  const PaymentMethodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<PaymentMethodCubit>()..getPaymentMethods(),
      child: BlocBuilder<PaymentMethodCubit, PaymentMethodState>(
          builder: (context, state) {
        final cubit = context.read<PaymentMethodCubit>();
        if (state.isLoading) {
          return const Center(
              child: CircularProgressIndicator(
            color: AppColors.grey,
          ));
        }

        if (state.errorMessage.isNotEmpty) {
          return Center(child: Text(state.errorMessage));
        }
        return SafeArea(
          bottom: false,
          child: Scaffold(
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  12.ph,
                  CustomText(
                    text: 'paymentMethods'.tr(),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w800,
                  ),
                  12.ph,
                  Expanded(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (state.cards.isNotEmpty) 12.ph,
                          ListView.separated(
                            shrinkWrap: true,
                            physics:
                                NeverScrollableScrollPhysics(), // لا تجعلها scrollable داخليًا
                            itemCount: state.cards.length,
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            itemBuilder: (context, index) {
                              final card = state.cards[index];
                              return CustomSwipeableListTitle(
                                onDelete: () {
                                  CustomDialog.show(
                                    context,
                                    title: 'deletePaymentMethod'.tr(),
                                    content: 'deletePaymentMethodMessage'.tr(),
                                    confirmText: 'delete'.tr(),
                                    isDestructive: true,
                                    onConfirm: () {
                                      cubit.deleteCard(card.id!);
                                      context.pop();
                                    },
                                  );
                                },
                                contentPadding: EdgeInsets.all(0),
                                leading: SvgPicture.asset(
                                  card.brand == 'visa'
                                      ? Assets.assetsIconsVisa
                                      : Assets.assetsIconsMasterCard,
                                  width: 35.w,
                                  height: 20.h,
                                ),
                                title: CustomText(
                                  text: '**** ${card.lastFour}',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              );
                            },
                            separatorBuilder: (context, index) => Divider(
                              height: 1.h,
                              color: AppColors.gray,
                              thickness: 1,
                            ),
                          ),
                          Divider(
                            height: 1.h,
                            color: AppColors.gray,
                            thickness: 1,
                          ),
                          5.ph,
                          ListTile(
                            onTap: () async {
                              await context.push(
                                AppRoutes.addNewPaymentMethod,
                                extra: context.read<PaymentMethodCubit>(),
                              );
                            },
                            contentPadding: EdgeInsets.all(0),
                            leading: SvgPicture.asset(
                              Assets.assetsIconsCardAdd,
                              height: 24.h,
                              width: 24.w,
                            ),
                            title: CustomText(
                              text: 'addNewMethod'.tr(),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            trailing: Icon(
                              Icons.chevron_right,
                              color: AppColors.blackDark,
                              size: 28,
                            ),
                          ),
                          5.ph,
                          Divider(
                            height: 1.h,
                            color: AppColors.gray,
                            thickness: 1,
                          ),
                          30.ph,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
