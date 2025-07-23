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
          isDisabled: !(cubit.state.user.agreedToTerms == true &&
              cubit.state.user.isAbove18 == true &&
              (cubit.state.user.firstName?.isNotEmpty ?? false) &&
              (cubit.state.user.lastName?.isNotEmpty ?? false) &&
              (cubit.state.user.email?.isNotEmpty ?? false) &&
              (cubit.state.user.password?.isNotEmpty ?? false)));
    });
  }
}
