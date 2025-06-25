part of '../../auth.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegistrationCubit>();

    return Form(
      key: cubit.formKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            NameFields(),
            SizedBox(height: 15.h),
            EmailField(),
            SizedBox(height: 15.h),
            PasswordField(),
            SizedBox(height: 15.h),
            GenderDropdown(),
            SizedBox(height: 10.h),
            CountryDropdown(),
            SizedBox(height: 40.h),
            CheckboxRowTerms(),
            SizedBox(height: 18.h),
            CheckboxRowAge(),
            SizedBox(height: 20.h),
            ContinueButton(),
            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }
}
