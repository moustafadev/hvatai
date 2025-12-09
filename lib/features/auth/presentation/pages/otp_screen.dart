part of '../auth.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key, required this.phone});

  final String phone;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return BlocProvider(
      create: (_) => locator<OtpCubit>()..initPhone(phone),
      child: BlocBuilder<OtpCubit, OtpState>(
        builder: (context, state) {
          final cubit = context.read<OtpCubit>();

          return Scaffold(
            backgroundColor: AppColors.lightGreyBackground,
            body: SafeArea(
              bottom: false,
              child: Form(
                key: formKey,
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          24.ph,
                          CustomText(
                            text: 'Код из смс',
                            color: AppColors.blackDark,
                            fontWeight: FontWeight.w800,
                            fontSize: 20.sp,
                          ),
                          16.ph,
                          CustomText(
                            text: 'Отправили код на номер $phone',
                            color: AppColors.blackColorIcon,
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            textAlign: TextAlign.center,
                          ),
                          24.ph,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: CustomTextField(
                              hintText: 'Введите код',
                              keyboardType: TextInputType.number,
                              isRequired: false,
                              onChanged: cubit.updateCode,
                              validator: (value) {
                                if (value == null || value.length != 4) {
                                  return 'Введите код';
                                }
                                return null;
                              },
                              maxLength: 4,
                            ),
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
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: CustomGradientButton(
                              text: 'Продолжить',
                              isLoading: state.isVerifying,
                              isDisabled: !(state.code.length == 4),
                              onPressed: () {
                                if (!formKey.currentState!.validate()) {
                                  return;
                                }
                                cubit.verifyOtp(context);
                              },
                            ),
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
        },
      ),
    );
  }
}
