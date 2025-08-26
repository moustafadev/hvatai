part of '../chat.dart';


class ChatTitle extends StatelessWidget {
  const ChatTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Align(
        alignment: Alignment.centerLeft,
        child: CustomText(
          text: "Чаты",
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
