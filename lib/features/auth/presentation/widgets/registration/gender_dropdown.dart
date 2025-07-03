part of '../../auth.dart';

class GenderDropdown extends StatelessWidget {
  const GenderDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationCubit, RegistrationState>(
      builder: (context, state) {
        final cubit = context.read<RegistrationCubit>();

        return CustomDropdown(
          hintText: 'Select Gender',
          value: cubit.state.gender,
          prefix: cubit.state.gender == 'Male'
              ? Icon(Icons.male)
              : cubit.state.gender == 'Female'
                  ? Icon(Icons.female)
                  : cubit.state.gender == 'Other'
                      ? Icon(Icons.other_houses)
                      : null,
          onChanged: cubit.setGender,
          items: const ['Male', 'Female', 'Other']
              .map((val) => DropdownMenuItem(
                    value: val,
                    child: Text(val),
                  ))
              .toList(),
        );
      },
    );
  }
}
