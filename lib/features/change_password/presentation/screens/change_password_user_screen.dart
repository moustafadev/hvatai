part of '../change_password.dart';

class ChangePasswordUserScreen extends StatelessWidget {
  const ChangePasswordUserScreen({
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
      body: BlocProvider(
        create: (context) => locator<ChangePasswordCubit>(),
        child: BlocBuilder<ChangePasswordCubit, ChangePasswordState>(
            builder: (context, state) {
          final cubit = context.read<ChangePasswordCubit>();
          return Padding(
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
                      PasswordField(),
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
                        isDisabled: cubit.isDisabled(),
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
      ),
    );
  }
}
