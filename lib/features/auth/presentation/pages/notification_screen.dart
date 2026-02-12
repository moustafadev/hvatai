part of '../auth.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              20.ph,
              CustomText(
                text: "dontMissShow".tr(),
                fontSize: 28.sp,
                fontWeight: FontWeight.w800,
              ),
              20.ph,
              Expanded(
                child: CustomContainer(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 20.h),
                  image: DecorationImage(
                      image: AssetImage(Assets.assetsImagesNotificationImage),
                      fit: BoxFit.fill),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomText(
                        text: 'beFirstStream'.tr(),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w800,
                      ),
                      8.ph,
                      CustomText(
                        text: 'receiveNotifications'.tr(),
                        fontSize: 14.sp,
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                ),
              ),
              32.ph,
              CustomGradientButton(
                text: 'continue'.tr(),
                isDisabled: false,
                isLoading: false,
                onPressed: () {
                  showContactsDialog(context);
                },
              ),
              20.ph,
            ],
          ),
        ),
      ),
    );
  }
}
