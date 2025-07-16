part of '../profile.dart';

class ChangeEmailUser extends StatelessWidget {
  const ChangeEmailUser({super.key});

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
                text: 'changeEmail'.tr(),
                fontWeight: FontWeight.w800,
                fontSize: 20.sp,
              ),
              12.ph,
              CustomText(
                text:
                    'Enter a new e-mail and we will send a notification to the specified e-mail for confirmation',
                fontSize: 12.sp,
                color: AppColors.grey,
                fontWeight: FontWeight.w500,
              ),
              8.ph,
              ChangeEmailField(),
              300.ph,
              CustomGradientButton(
                  text: 'save'.tr(), isDisabled: true, onPressed: () {}),
              20.ph,
            ],
          ),
        ),
      ),
    );
  }
}
