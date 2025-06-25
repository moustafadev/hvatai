part of '../../auth.dart';

class CountryDropdown extends StatelessWidget {
  const CountryDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationCubit, RegistrationState>(
      builder: (context, state) {
        final cubit = context.read<RegistrationCubit>();

        return CustomDropdown(
          hintText: 'Select Country',
          value: cubit.state.country,
          onChanged: cubit.setCountry,
          items: const ['Russia', 'USA', 'India']
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
