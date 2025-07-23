part of '../../auth.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationCubit, RegistrationState>(
        builder: (context, state) {
      final cubit = context.read<RegistrationCubit>();

      return Form(
        key: cubit.formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.ph,
              Row(
                children: [
                  const Spacer(),
                  Center(
                    child: CustomText(
                      text: 'register'.tr(),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => context.pop(),
                    tooltip: 'close'.tr(),
                  ),
                ],
              ),
              20.ph,
              NameFields(),
              15.ph,
              EmailField(),
              15.ph,
              PasswordField(),
              15.ph,
              CustomSelectGender(
                value: state.user.gender != null
                    ? capitalize(state.user.gender!)
                    : null,
                onChanged: (val) {
                  cubit.setGender(val?.toLowerCase());
                },
              ),
              10.ph,
              CountryDropdown(),
              40.ph,
              CheckboxRowTerms(),
              18.ph,
              CheckboxRowAge(),
              20.ph,
              ContinueButton(),
              20.ph,
            ],
          ),
        ),
      );
    });
  }

  String capitalize(String s) =>
      s.isEmpty ? s : s[0].toUpperCase() + s.substring(1);
}
