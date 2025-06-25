part of '../../auth.dart';

class CheckboxRowTerms extends StatelessWidget {
  const CheckboxRowTerms({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegistrationCubit>();

    return Row(
      children: [
        BlocBuilder<RegistrationCubit, RegistrationState>(
          builder: (context, state) {
            return GradientCheckbox(
              selected: state.agreedToTerms,
              onTap: cubit.toggleAgreed,
            );
          },
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 14.sp, color: Colors.black87),
              children: [
                TextSpan(text: 'agreePrefix'.tr()),
                TextSpan(
                  text: 'terms'.tr(),
                  style: const TextStyle(
                    color: Colors.deepPurple,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => context.push('/terms'),
                ),
                TextSpan(text: 'and'.tr()),
                TextSpan(
                  text: 'privacy'.tr(),
                  style: const TextStyle(
                    color: Colors.deepPurple,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => context.push('/privacy'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
