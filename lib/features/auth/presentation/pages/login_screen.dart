part of '../auth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<LoginCubit>(),
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: BlocBuilder<LoginCubit, LoginState>(
              builder: (context, state) {
                final cubit = context.read<LoginCubit>();
                return AbsorbPointer(
                  absorbing: state.isLoading,
                  child: CustomScrollView(
                    physics: BouncingScrollPhysics(),
                    slivers: [
                      SliverToBoxAdapter(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            AuthHeader(title: 'login'.tr()),
                            20.ph,
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: AppColors.boxShadowTextField,
                              ),
                              child: CustomTextField(
                                hintText: 'phoneNumber'.tr(),
                                keyboardType: TextInputType.number,
                                onChanged: cubit.onChangePhone,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                  RuPhoneFormatter(),
                                ],
                              ),
                            ),
                            if (state.errorMessage.isNotEmpty) ...[
                              10.ph,
                              CustomText(
                                text: state.errorMessage,
                                fontSize: 14.sp,
                                color: AppColors.red,
                              ),
                            ],
                          ],
                        ),
                      ),
                      SliverFillRemaining(
                        hasScrollBody: false,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomGradientButton(
                              text: 'getCode'.tr(),
                              isLoading: cubit.state.isLoading,
                              isDisabled: cubit.getClearPhone().length != 11,
                              onPressed: () {
                                FocusScope.of(context).unfocus();
                                cubit.login(context);
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
        ),
      ),
    );
  }
}
