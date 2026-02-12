part of '../auth.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key, required this.phone});

  final String phone;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<OtpCubit>()..initPhone(phone),
      child: BlocBuilder<OtpCubit, OtpState>(
        builder: (context, state) {
          final cubit = context.read<OtpCubit>();

          return AbsorbPointer(
            absorbing: state.isVerifying,
            child: Scaffold(
              backgroundColor: AppColors.background,
              body: SafeArea(
                bottom: false,
                child: CustomScrollView(
                  physics: BouncingScrollPhysics(),
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            AuthHeader(title: 'login'.tr()),
                            24.ph,
                            CustomText(
                              text: 'codeFromSms'.tr(),
                              fontWeight: FontWeight.w800,
                              fontSize: 20.sp,
                            ),
                            4.ph,
                            CustomText(
                              text: 'sentCodeToNumber'
                                  .tr(namedArgs: {'phone': phone}),
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              textAlign: TextAlign.center,
                            ),
                            24.ph,
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: AppColors.boxShadowTextField,
                              ),
                              child: CustomTextField(
                                hintText: 'Введите код',
                                keyboardType: TextInputType.number,
                                onChanged: cubit.updateCode,
                                maxLength: 4,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SliverFillRemaining(
                      hasScrollBody: false,
                      fillOverscroll: true,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: CustomGradientButton(
                              text: 'continue'.tr(),
                              isLoading: state.isVerifying,
                              isDisabled: !(state.code.length == 4),
                              onPressed: () {
                                FocusScope.of(context).unfocus();
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
