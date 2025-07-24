part of '../profile.dart';

class PaymentMethodsScreen extends StatelessWidget {
  const PaymentMethodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<PaymentMethodCubit>()..getPaymentMethods(),
      child: BlocBuilder<PaymentMethodCubit, PaymentMethodState>(
          builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.grey,
            ),
          );
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
                      fontWeight: FontWeight.w800),
                  state.cards.isEmpty ? 0.ph : 12.ph,
                  ListView.separated(
                    shrinkWrap: true,
                    itemCount: state.cards.length,
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    itemBuilder: (context, index) {
                      final card = state.cards[index];

                      return Row(
                        children: [
                          SvgPicture.asset(
                            card.brand == 'visa'
                                ? Assets.assetsIconsVisa
                                : Assets.assetsIconsMasterCard,
                            width: 35.w,
                            height: 12.h,
                          ),
                          8.pw,
                          CustomText(
                            text: '**** ${card.lastFour}',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) => Divider(
                      height: 50.h,
                      color: AppColors.gray,
                      thickness: 1,
                    ),
                  ),
                  ListTile(
                    onTap: () async {
                      final updated = await context.push<bool>(
                        AppRoutes.addNewPaymentMethod,
                      );
                      if (updated == true) {
                        context.read<PaymentMethodCubit>().getPaymentMethods();
                      }
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
                  Divider(
                    height: 1.h,
                    color: AppColors.gray,
                    thickness: 1,
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
