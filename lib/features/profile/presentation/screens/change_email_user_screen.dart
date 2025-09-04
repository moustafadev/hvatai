part of '../profile.dart';

class ChangeEmailUserScreen extends StatelessWidget {
  const ChangeEmailUserScreen({
    super.key,
  });
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
      body: BlocBuilder<EditProfileCubit, EditProfileState>(
          builder: (context, state) {
        final cubit = context.read<EditProfileCubit>();
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
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
                      text: 'currentEmail'.tr(),
                      fontSize: 12.sp,
                      color: AppColors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                    8.ph,
                    CustomTextField(
                      hintText: 'oldEmail'.tr(),
                      initialValue: state.user.email,
                      keyboardType: TextInputType.emailAddress,
                      isRequired: false,
                      readOnly: true,
                    ),
                    16.ph,
                    CustomText(
                      text: 'EnterNewEmail'.tr(),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                    ),
                    8.ph,
                    CustomTextField(
                      hintText: 'email'.tr(),
                      onChanged: (v) => cubit.updateNewField('email', v),
                      keyboardType: TextInputType.emailAddress,
                      isRequired: false,
                    ),
                  ],
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                fillOverscroll: true,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomGradientButton(
                      text: 'save'.tr(),
                      isLoading: state.isLoading,
                      isDisabled: !(state.user.email?.isNotEmpty ?? false),
                      onPressed: () {
                        cubit.submit(context);
                      },
                    ),
                    20.ph,
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
