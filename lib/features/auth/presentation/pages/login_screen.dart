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
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width: 16.w),
                                  CustomText(
                                    text: 'Войти',
                                    color: AppColors.blackDark,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18.sp,
                                  ),
                                  IconButton(
                                    onPressed: () => context.pop(context),
                                    icon: const Icon(Icons.close),
                                    tooltip: 'close'.tr(),
                                  )
                                ],
                              ),
                            ),
                            20.ph,
                            CustomTextField(
                              hintText: 'Номер телефона',
                              keyboardType: TextInputType.number,
                              controller: cubit.phoneController,
                              onChanged: cubit.onChangePhone,
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
                              text: 'Получить код',
                              isLoading: cubit.state.isLoading,
                              isDisabled: cubit.getClearPhone().length != 11,
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
