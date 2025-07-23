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
        ),
      ),
      body: BlocProvider(
        create: (context) => locator<ProfileCubit>(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    16.ph,
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
                    20.ph,
                    // PasswordField(),
                  ],
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomGradientButton(
                      text: 'save'.tr(),
                      isDisabled: false,
                      onPressed: () {
                        // TODO: تنفيذ منطق التحديث
                      },
                    ),
                    20.ph,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
