part of '../auth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<LoginCubit>(),
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: BlocBuilder<LoginCubit, LoginState>(
              builder: (context, state) {
                final cubit = context.read<LoginCubit>();

                return Form(
                  key: cubit.formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () => context.pop(),
                          tooltip: 'close'.tr(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      CustomText(
                        text: 'login'.tr(),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SFProRounded',
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        hintText: 'email'.tr(),
                        isRequired: true,
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
                      const SizedBox(height: 20),
                      CustomTextField(
                        hintText: 'password'.tr(),
                        obscureText: state.obscurePassword,
                        isPassword: true,
                        isRequired: true,
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
                        suffixIcon: IconButton(
                          icon: SvgPicture.asset(Assets.assetsIconsEyeClosed),
                          onPressed: cubit.togglePasswordVisibility,
                        ),
                      ),
                      const SizedBox(height: 20),
                      CustomGradientButton(
                        text: 'getCode'.tr(),
                        onPressed:
                            state.isLoading ? null : () => cubit.login(context),
                      ),
                      const SizedBox(height: 5),
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
