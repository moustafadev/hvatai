part of '../profile.dart';

class CountryDropdown extends StatelessWidget {
  const CountryDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<ProfileCubit>(),
      child: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          final cubit = context.read<ProfileCubit>();
          return CustomDropdown(
            hintText: 'Select Country',
            value: state.country.isNotEmpty ? state.country : null,
            onChanged: cubit.setCountry,
            prefix: cubit.state.country == 'Russia'
                ? Text('🇷🇺')
                : cubit.state.country == 'USA'
                    ? Text('🇺🇸')
                    : cubit.state.country == 'India'
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
      ),
    );
  }
}
