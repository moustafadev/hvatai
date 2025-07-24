part of '../auth.dart';

class TermsAndPolicyText extends StatelessWidget {
  const TermsAndPolicyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text.rich(
        TextSpan(
          text:
              "Нажимая на «Войти или зарегистрироваться», вы даете согласие на обработку персональных данных, согласно",
          style: const TextStyle(color: AppColors.graniteGray, fontSize: 14),
          children: [],
        ),
      ),
    );
  }
}
