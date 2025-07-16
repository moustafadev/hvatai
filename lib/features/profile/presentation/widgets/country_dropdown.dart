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
            hintText: 'country'.tr(),
            value: cubit.state.country.isEmpty ? null : cubit.state.country,
            onChanged: (v) => cubit.updateField('country', v ?? ''),
            prefix: cubit.state.country == 'Russia'
                ? const Text('🇷🇺')
                : cubit.state.country == 'USA'
                    ? const Text('🇺🇸')
                    : cubit.state.country == 'India'
                        ? const Text('🇮🇳')
                        : null,
            items: const ['Russia', 'USA', 'India']
                .map((val) => DropdownMenuItem<String>(
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
