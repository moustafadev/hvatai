part of '../profile.dart';

class UpdateCountryDropdown extends StatelessWidget {
  const UpdateCountryDropdown({super.key, required this.country});
  final String country;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProfileCubit, EditProfileState>(
      builder: (context, state) {
        final cubit = context.read<EditProfileCubit>();

        final selectedCountry =
            (state.user.country != null && state.user.country!.isNotEmpty)
                ? state.user.country
                : country;

        return CustomDropdown(
          hintText: 'country'.tr(),
          value: selectedCountry,
          onChanged: (v) => cubit.updateNewField('country', v ?? ''),
          prefix: selectedCountry == 'Russia'
              ? const Text('🇷🇺')
              : selectedCountry == 'USA'
                  ? const Text('🇺🇸')
                  : selectedCountry == 'India'
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
    );
  }
}
