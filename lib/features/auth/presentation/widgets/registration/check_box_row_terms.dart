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
              selected: state.user.agreedToTerms ?? false,
              onTap: cubit.toggleAgreed,
            );
          },
        ),
        Expanded(
          child: CustomText(
            text:
                'agreePrefix'.tr() + 'terms'.tr() + 'and'.tr() + 'privacy'.tr(),
          ),
        ),
      ],
    );
  }
}
