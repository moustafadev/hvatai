part of '../../auth.dart';

class PasswordStrengthIndicator extends StatelessWidget {
  const PasswordStrengthIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationCubit, RegistrationState>(
      builder: (context, state) {
        final strength = state.passwordStrength;
        final color = strength < 0.3
            ? Colors.red
            : strength < 0.6
                ? Colors.orange
                : strength < 0.9
                    ? Colors.blue
                    : Colors.green;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LinearProgressIndicator(
              value: strength,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation(color),
            ),
            SizedBox(height: 4.h),
            CustomText(
              text: state.passwordStrengthText,
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ],
        );
      },
    );
  }
}
