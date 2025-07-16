part of '../profile.dart';

class ChangePasswordUser extends StatelessWidget {
  const ChangePasswordUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBackground,
      appBar: AppBar(
          backgroundColor: AppColors.lightGreyBackground,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: AppColors.blackColorIcon),
            onPressed: () {
              context.pop(context);
            },
          )),
      body: BlocProvider(
        create: (context) => locator<ProfileCubit>(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'changePassword'.tr(),
                fontWeight: FontWeight.w800,
                fontSize: 20.sp,
              ),
              12.ph,
              CustomText(
                text: 'newPasswordMustBeDifferent'.tr(),
                fontSize: 12.sp,
                color: AppColors.grey,
                fontWeight: FontWeight.w500,
              ),
              8.ph,
              PasswordField(),
              250.ph,
              CustomGradientButton(
                  text: 'save'.tr(), isDisabled: true, onPressed: () {}),
              10.ph,
            ],
          ),
        ),
      ),
    );
  }
}
