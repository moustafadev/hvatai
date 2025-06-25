part of '../../auth.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegistrationCubit>();
    return CustomGradientButton(
      text: 'continue'.tr(),
      onPressed: () => cubit.submit(context),
    );
  }
}
