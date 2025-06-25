part of '../../auth.dart';

class CheckboxRowAge extends StatelessWidget {
  const CheckboxRowAge({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegistrationCubit>();
    return Row(
      children: [
        BlocBuilder<RegistrationCubit, RegistrationState>(
          builder: (context, state) {
            return GradientCheckbox(
                selected: cubit.state.isAbove18, onTap: cubit.toggleAbove18);
          },
        ),
        Expanded(
          child: CustomText(
            text: 'confirmAge'.tr(),
            fontSize: 14.sp,
          ),
        ),
      ],
    );
  }
}
