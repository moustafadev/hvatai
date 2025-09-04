part of '../chat.dart';

class ChatMessagesList extends StatelessWidget {
  final List<MessageModel> messages;
  final bool? isSupport;

  const ChatMessagesList({super.key, required this.messages, this.isSupport});

  @override
  Widget build(BuildContext context) {
    final reversedMessages = messages.reversed.toList();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.builder(
        itemCount: reversedMessages.length,
        reverse: true,
        itemBuilder: (context, index) {
          final message = reversedMessages[index];
          return ChatBubble(
            message: message,
            isSupport: isSupport,
          );
        },
      ),
    );
  }
}
