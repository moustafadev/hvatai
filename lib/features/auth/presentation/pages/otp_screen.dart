part of '../auth.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key, required this.data});

  final UserRegistrationData data;

  @override
  Widget build(BuildContext context) {
    assert(data.email != null, 'User email is required');
    return BlocProvider(
      create: (_) => OtpCubit(locator<CheckOtpUseCase>(), user: data),
      child: BlocBuilder<OtpCubit, OtpState>(
        builder: (context, state) {
          final cubit = context.read<OtpCubit>();

          return SafeArea(
            bottom: false,
            child: Scaffold(
              backgroundColor: AppColors.lightGreyBackground,
              resizeToAvoidBottomInset: false,
              body: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.topRight,
                            child: IconButton(
                                onPressed: () => context.pop(context),
                                icon: const Icon(Icons.close))),
                        72.ph,
                        CustomText(
                          text: 'enterCode'.tr(),
                          color: AppColors.blackDark,
                          fontWeight: FontWeight.w800,
                          fontSize: 28.sp,
                        ),
                        56.ph,
                        PinputWidget(
                          onChanged: cubit.updateCode,
                        ),
                        24.ph,
                        CustomText(
                          text: 'codeSentInfo'.tr(),
                          color: AppColors.blackDark,
                          fontWeight: FontWeight.w600,
                          fontSize: 10.sp,
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
                            text: 'enter'.tr(),
                            isLoading: state.isVerifying,
                            isDisabled: !(state.code.length == 4),
                            onPressed: () {
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
          );
        },
      ),
    );
  }
}
