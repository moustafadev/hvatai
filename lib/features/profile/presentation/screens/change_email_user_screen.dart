part of '../profile.dart';

class ChangeEmailUserScreen extends StatelessWidget {
  const ChangeEmailUserScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final extra = GoRouterState.of(context).extra as Map<String, dynamic>?;
    final user = extra?['model'] as UserRegistrationData?;
    final cubit = extra?['cubit'] as EditProfileCubit?;

    return BlocProvider.value(
      value: cubit ?? locator<EditProfileCubit>()
        ..initProfileModel(user ?? UserRegistrationData()),
      child: Scaffold(
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

            // Show confirmation screen if verification was sent
            if (state.emailVerificationSent) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: 'Добавить Е-mail',
                            fontWeight: FontWeight.w800,
                            fontSize: 20.sp,
                          ),
                          12.ph,
                          CustomText(
                            text:
                                'Ссылка для подтверждения отправлена вам на почту',
                            fontSize: 14.sp,
                            color: AppColors.grey,
                            fontWeight: FontWeight.w400,
                          ),
                          20.ph,
                          CustomTextField(
                            hintText: 'Email',
                            initialValue:
                                state.pendingEmail ?? state.user.email,
                            keyboardType: TextInputType.emailAddress,
                            isRequired: false,
                            readOnly: true,
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
                            text: 'Ок',
                            onPressed: () {
                              final updatedEmail =
                                  state.pendingEmail ?? state.user.email;
                              final updatedUser =
                                  state.user.copyWith(email: updatedEmail);
                              cubit.resetEmailVerification();
                              cubit.updateUserData(updatedUser);
                              context.pop(updatedUser);
                            },
                          ),
                          20.ph,
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }

            // Show input screen
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Добавить Е-mail',
                          fontWeight: FontWeight.w800,
                          fontSize: 20.sp,
                        ),
                        12.ph,
                        CustomText(
                          text: 'Укажите и подтвердите e-mail для верификации',
                          fontSize: 14.sp,
                          color: AppColors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                        20.ph,
                        CustomTextField(
                          hintText: 'Email',
                          initialValue: state.pendingEmail,
                          onChanged: (v) {
                            cubit.updateNewField('email', v);
                            cubit.setPendingEmail(v);
                          },
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
                          text: 'Подтвердить',
                          isLoading: state.isLoading,
                          isDisabled:
                              !(state.pendingEmail?.isNotEmpty ?? false) ||
                                  !_isValidEmail(state.pendingEmail ?? ''),
                          onPressed: () {
                            cubit.sendEmailVerification(context);
                          },
                        ),
                        20.ph,
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  bool _isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }
}
