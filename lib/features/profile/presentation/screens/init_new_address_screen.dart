part of '../profile.dart';

class InitNewAddress extends StatelessWidget {
  const InitNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBackground,
      appBar: AppBar(
        backgroundColor: AppColors.lightGreyBackground,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: AppColors.blackColorIcon),
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
            CustomText(
              text: 'deliveryAddress'.tr(),
              fontWeight: FontWeight.w800,
              fontSize: 20.sp,
            ),
            24.ph,
            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: Image.asset(
                height: 26.h,
                width: 26.w,
                Assets.assetsIconsDelivery,
              ),
              title: CustomText(
                text: '109155,Moscow,Ryazansky Prospekt,58/2,193'.tr(),
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
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
            ListTile(
              onTap: () {
                context.push(
                  AppRoutes.deliveryAddressUpdate,
                );
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
    );
  }
}
