part of '../profile.dart';

class ChangeEmailField extends StatelessWidget {
  const ChangeEmailField({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProfileCubit>();
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              hintText: 'email'.tr(),
              isRequired: false,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              onChanged: (value) => cubit.updateField('email', value),
              validator: cubit.validateEmail,
            ),
            if (state.emailError != null)
              Padding(
                padding: EdgeInsets.only(top: 4.0.h, left: 4.0.w),
                child: CustomText(
                  text: state.emailError!,
                  color: Colors.red,
                  fontSize: 12.sp,
                ),
              ),
          ],
        );
      },
    );
  }
}
