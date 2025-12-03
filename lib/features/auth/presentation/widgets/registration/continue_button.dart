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
          onPressed: () {
            cubit.register(context);
          },
          isLoading: cubit.state.isRegisterLoading,
          isDisabled: !cubit.isFormValid);
    });
  }
}
