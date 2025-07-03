part of '../../auth.dart';

class NameFields extends StatelessWidget {
  const NameFields({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegistrationCubit>();

    return Column(
      children: [
        CustomTextField(
          hintText: 'firstName'.tr(),
          isRequired: false,
          onChanged: (v) => cubit.updateField('firstName', v),
          validator: (v) => v == null || v.isEmpty ? 'Enter first name' : null,
        ),
        SizedBox(height: 15.h),
        CustomTextField(
          hintText: 'lastName'.tr(),
          isRequired: false,
          onChanged: (v) => cubit.updateField('lastName', v),
          validator: (v) => v == null || v.isEmpty ? 'Enter last name' : null,
        ),
      ],
    );
  }
}
