part of '../change_password.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangePasswordCubit, ChangePasswordState>(
      builder: (context, state) {
        final cubit = context.read<ChangePasswordCubit>();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              hintText: 'old password'.tr(),
              obscureText: state.obscurePassword,
              suffixIcon: IconButton(
                icon: state.obscurePassword
                    ? SvgPicture.asset(Assets.assetsIconsEyeClosed)
                    : Icon(Icons.remove_red_eye_outlined),
                onPressed: cubit.toggleObscurePassword,
              ),
              onChanged: (value) => cubit.updateField('currentPassword', value),
              validator: cubit.validatePassword,
            ),
            8.ph,
            CustomTextField(
              hintText: 'New password'.tr(),
              isRequired: false,
              obscureText: state.obscureNewPassword,
              suffixIcon: IconButton(
                icon: state.obscureNewPassword
                    ? SvgPicture.asset(Assets.assetsIconsEyeClosed)
                    : Icon(Icons.remove_red_eye_outlined),
                onPressed: cubit.toggleObscureNewPassword,
              ),
              onChanged: (value) => cubit.updateField('password', value),
              validator: cubit.validatePassword,
            ),
            8.ph,
            CustomTextField(
              hintText: 'Repeat password'.tr(),
              obscureText: state.obscureConfirmPassword,
              suffixIcon: IconButton(
                icon: state.obscureConfirmPassword
                    ? SvgPicture.asset(Assets.assetsIconsEyeClosed)
                    : Icon(Icons.remove_red_eye_outlined),
                onPressed: cubit.toggleObscureConfirmPassword,
              ),
              onChanged: (value) =>
                  cubit.updateField('passwordConfirmation', value),
              validator: (value) => cubit.validateConfirmPassword(
                value,
                state.user.password ?? '',
              ),
            ),
          ],
        );
      },
    );
  }
}
