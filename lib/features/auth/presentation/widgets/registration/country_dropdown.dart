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
          value: cubit.state.user.country,
          onChanged: cubit.setCountry,
          prefix: cubit.state.user.country == 'Russia'
              ? Text('🇷🇺')
              : cubit.state.user.country == 'USA'
                  ? Text('🇺🇸')
                  : cubit.state.user.country == 'India'
                      ? Text('🇮🇳')
                      : null,
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
