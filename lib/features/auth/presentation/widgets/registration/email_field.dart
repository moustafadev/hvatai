part of '../../auth.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegistrationCubit>();
    return BlocBuilder<RegistrationCubit, RegistrationState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              hintText: 'email'.tr(),
              isRequired: true,
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
