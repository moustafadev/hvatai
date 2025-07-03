part of '../../auth.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationCubit, RegistrationState>(
      builder: (context, state) {
        final cubit = context.read<RegistrationCubit>();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              hintText: 'password'.tr(),
              isRequired: false,
              obscureText: state.obscurePassword,
              suffixIcon: state.obscurePassword
                  ? IconButton(
                      icon: SvgPicture.asset(Assets.assetsIconsEyeClosed),
                      onPressed: cubit.toggleObscurePassword,
                    )
                  : IconButton(
                      icon: Icon(Icons.remove_red_eye_outlined),
                      onPressed: cubit.toggleObscurePassword,
                    ),
              onChanged: (value) => cubit.updateField('password', value),
              validator: cubit.validatePassword,
            ),
          ],
        );
      },
    );
  }
}
