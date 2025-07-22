part of '../profile.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        final cubit = context.read<ProfileCubit>();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              hintText: 'old password'.tr(),
              isRequired: false,
              obscureText: state.obscurePassword,
              suffixIcon: IconButton(
                icon: state.obscurePassword
                    ? SvgPicture.asset(Assets.assetsIconsEyeClosed)
                    : Icon(Icons.remove_red_eye_outlined),
                onPressed: cubit.toggleObscurePassword,
              ),
              onChanged: (value) => cubit.updateField('password', value),
              validator: cubit.validatePassword,
            ),
            8.ph,
            CustomTextField(
              hintText: 'New password'.tr(),
              isRequired: false,
              obscureText: state.obscurePassword,
              suffixIcon: IconButton(
                icon: state.obscurePassword
                    ? SvgPicture.asset(Assets.assetsIconsEyeClosed)
                    : Icon(Icons.remove_red_eye_outlined),
                onPressed: cubit.toggleObscurePassword,
              ),
              onChanged: (value) => cubit.updateField('password', value),
              validator: cubit.validatePassword,
            ),
            8.ph,
            CustomTextField(
              hintText: 'Repeat password'.tr(),
              isRequired: false,
              obscureText: state.obscurePassword,
              suffixIcon: IconButton(
                icon: state.obscurePassword
                    ? SvgPicture.asset(Assets.assetsIconsEyeClosed)
                    : Icon(Icons.remove_red_eye_outlined),
                onPressed: cubit.toggleObscurePassword,
              ),
              onChanged: (value) => cubit.updateField('confirmPassword', value),
              validator: (value) =>
                  cubit.validateConfirmPassword(value, state.password),
            ),
            Padding(
              padding: EdgeInsets.only(top: 4.0, left: 8.0),
              child: Text(
                state.passwordError,
                style: TextStyle(color: Colors.red, fontSize: 12),
              ),
            ),
          ],
        );
      },
    );
  }
}
