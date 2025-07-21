part of '../auth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<LoginCubit>(),
      child: Scaffold(
        backgroundColor: AppColors.lightGreyBackground,
        body: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: BlocBuilder<LoginCubit, LoginState>(
              builder: (context, state) {
                final cubit = context.read<LoginCubit>();
                return Form(
                  key: cubit.formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                const Spacer(),
                                Center(
                                  child: CustomText(
                                    text: 'login'.tr(),
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Spacer(),
                                IconButton(
                                  icon: const Icon(Icons.close),
                                  onPressed: () =>
                                      context.push(AppRoutes.socialLogin),
                                  tooltip: 'close'.tr(),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            CustomTextField(
                              hintText: 'email'.tr(),
                              isRequired: false,
                              onChanged: cubit.updateEmail,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'enter_email'.tr();
                                }
                                if (!RegExp(
                                        r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$")
                                    .hasMatch(value)) {
                                  return 'invalidEmail'.tr();
                                }
                                return null;
                              },
                            ),
                            20.ph,
                            CustomTextField(
                              hintText: 'password'.tr(),
                              obscureText: state.obscurePassword,
                              isPassword: true,
                              isRequired: false,
                              onChanged: cubit.updatePassword,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'enterPassword'.tr();
                                }
                                if (value.length < 6) {
                                  return 'passwordLength'.tr();
                                }
                                return null;
                              },
                              suffixIcon: state.obscurePassword
                                  ? IconButton(
                                      icon: SvgPicture.asset(
                                          Assets.assetsIconsEyeClosed),
                                      onPressed: cubit.togglePasswordVisibility,
                                    )
                                  : IconButton(
                                      icon: const Icon(
                                          Icons.remove_red_eye_outlined),
                                      onPressed: cubit.togglePasswordVisibility,
                                    ),
                            ),
                          ],
                        ),
                      ),
                      SliverFillRemaining(
                        hasScrollBody: false,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomGradientButton(
                              text: 'login'.tr(),
                              isLoading: cubit.state.isLoading,
                              isDisabled: !(cubit.state.email.isNotEmpty &&
                                  cubit.state.password.isNotEmpty),
                              onPressed: () => cubit.login(context),
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
        ),
      ),
    );
  }
}
