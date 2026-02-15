part of '../profile.dart';

class ChangeEmailUserScreen extends StatelessWidget {
  const ChangeEmailUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final extra = GoRouterState.of(context).extra as Map<String, dynamic>?;
    final user = extra?['model'] as UserRegistrationData?;
    final cubit = extra?['cubit'] as EditProfileCubit?;

    return BlocProvider.value(
      value: cubit ?? locator<EditProfileCubit>()
        ..initProfileModel(user ?? UserRegistrationData()),
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: AppColors.background,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: AppColors.blackColorIcon),
            onPressed: () => context.pop(),
          ),
        ),
        body: BlocBuilder<EditProfileCubit, EditProfileState>(
          builder: (context, state) {
            final cubit = context.read<EditProfileCubit>();

            final title = 'addEmail'.tr();

            if (state.emailVerificationSent) {
              final emailToShow = state.pendingEmail ?? state.user.email;

              return _EmailScreenLayout(
                title: title,
                subtitle: 'verificationLinkSentToYourEmail'.tr(),
                emailValue: emailToShow,
                readOnly: true,
                buttonText: 'ok'.tr(),
                isLoading: false,
                isDisabled: false,
                onEmailChanged: null, // readOnly
                onButtonPressed: () {
                  final updatedEmail = state.pendingEmail ?? state.user.email;
                  final updatedUser = state.user.copyWith(email: updatedEmail);
                  cubit.resetEmailVerification();
                  cubit.updateUserData(updatedUser);
                  context.pop(updatedUser);
                },
              );
            }

            final pending = state.pendingEmail ?? '';

            return _EmailScreenLayout(
              title: title,
              subtitle: 'specifyAndConfirmEmailForVerification'.tr(),
              emailValue: state.pendingEmail,
              readOnly: false,
              buttonText: 'confirm'.tr(),
              isLoading: state.isLoading,
              isDisabled: pending.isEmpty || !_isValidEmail(pending),
              onEmailChanged: (v) {
                cubit.updateNewField('email', v);
                cubit.setPendingEmail(v);
              },
              onButtonPressed: () => cubit.sendEmailVerification(context),
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

/// ✅ Reusable layout for both states
class _EmailScreenLayout extends StatelessWidget {
  const _EmailScreenLayout({
    required this.title,
    required this.subtitle,
    required this.emailValue,
    required this.readOnly,
    required this.buttonText,
    required this.isLoading,
    required this.isDisabled,
    required this.onButtonPressed,
    required this.onEmailChanged,
  });

  final String title;
  final String subtitle;
  final String? emailValue;
  final bool readOnly;

  final String buttonText;
  final bool isLoading;
  final bool isDisabled;
  final VoidCallback onButtonPressed;
  final ValueChanged<String>? onEmailChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: title,
                  fontWeight: FontWeight.w800,
                  fontSize: 20.sp,
                ),
                12.ph,
                CustomText(
                  text: subtitle,
                  fontSize: 14.sp,
                  color: AppColors.grey,
                  fontWeight: FontWeight.w400,
                ),
                20.ph,
                CustomTextField(
                  hintText: 'email'.tr(),
                  initialValue: emailValue,
                  keyboardType: TextInputType.emailAddress,
                  isRequired: false,
                  readOnly: readOnly,
                  onChanged: readOnly ? null : onEmailChanged,
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
                  text: buttonText,
                  isLoading: isLoading,
                  isDisabled: isDisabled,
                  onPressed: onButtonPressed,
                ),
                20.ph,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
