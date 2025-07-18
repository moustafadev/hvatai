part of '../profile.dart';

class PaymentMethodsScreen extends StatelessWidget {
  const PaymentMethodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: AppColors.blackColorIcon),
          onPressed: () {
            context.pop(context);
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
            12.ph,
            Row(children: [
              SvgPicture.asset(
                width: 35.w,
                height: 12.h,
                Assets.assetsIconsVisa,
              ),
              8.pw,
              CustomText(
                text: '**** 1234',
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              )
            ]),
            Divider(
              height: 50.h,
              color: AppColors.gray,
              thickness: 1,
            ),
            Row(children: [
              SvgPicture.asset(
                width: 35.w,
                height: 16.h,
                Assets.assetsIconsMasterCard,
              ),
              8.pw,
              CustomText(
                text: '**** 5678',
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              )
            ]),
            16.ph,
            Divider(
              height: 0.h,
              color: AppColors.gray,
              thickness: 1,
            ),
            ListTile(
              onTap: () => context.push(AppRoutes.addNewPaymentMethod),
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
    );
  }
}
