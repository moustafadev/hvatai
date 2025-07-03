part of '../../auth.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationCubit, RegistrationState>(
        builder: (context, state) {
      final cubit = context.read<RegistrationCubit>();
      return CustomGradientButton(
        text: 'continue'.tr(),
        onPressed: () => cubit.submit(context),
        isDisabled: cubit.state.agreedToTerms &&
            cubit.state.isAbove18 &&
            cubit.state.lastName.isNotEmpty &&
            cubit.state.firstName.isNotEmpty &&
            cubit.state.email.isNotEmpty &&
            cubit.state.password.isNotEmpty,
      );
    });
  }
}
