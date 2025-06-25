part of '../auth.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<VerificationCubit>(),
      child: BlocBuilder<VerificationCubit, VerificationState>(
        builder: (context, state) {
          final cubit = context.read<VerificationCubit>();

          final pinTheme = PinTheme(
            width: 56,
            height: 64,
            textStyle: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
          );

          return Scaffold(
            backgroundColor: Colors.grey[100],
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40),
                    CustomText(
                      text: 'enterCode'.tr(),
                      fontFamily: 'SFProRounded',
                      fontWeight: FontWeight.w800,
                      fontSize: 28,
                    ),
                    const SizedBox(height: 24),
                    Pinput(
                      length: 5,
                      preFilledWidget: const CustomText(
                        text: '0',
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 32,
                      ),
                      defaultPinTheme: pinTheme,
                      focusedPinTheme: pinTheme.copyWith(
                        decoration: pinTheme.decoration!.copyWith(
                          border: Border.all(color: Colors.deepPurple),
                        ),
                      ),
                      onChanged: cubit.updateCode,
                      onCompleted: cubit.updateCode,
                    ),
                    if (state.error != null) ...[
                      const SizedBox(height: 10),
                      Text(
                        state.error!,
                        style: const TextStyle(
                          color: Colors.redAccent,
                          fontSize: 14,
                        ),
                      ),
                    ],
                    const SizedBox(height: 20),
                    CustomText(
                      text: 'codeSentInfo'.tr(),
                      fontFamily: 'SFProRounded',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                    const Spacer(),
                    CustomGradientButton(
                      text: 'login'.tr(),
                      onPressed: cubit.submitCode,
                      // onPressed: state.code.length == 6
                      //     ? cubit.submitCode
                      //     : null, // disable if not filled
                    ),
                    const SizedBox(height: 20),
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
