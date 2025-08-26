part of '../chat.dart';

class ChatSupportDetailsScreen extends StatelessWidget {
  final int chatId;

  ChatSupportDetailsScreen({
    super.key,
    required this.chatId,
  });

  final TextEditingController _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            const ChatDetailsSupportHeader(),
            const SizedBox(height: 16),
            Expanded(
              child: BlocBuilder<ChatsCubit, ChatsState>(
                builder: (context, state) {
                  if (state.isLoadingSupportMessages) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (state.isError) {
                    return Center(child: Text(state.errorMessage));
                  }

                  return ChatMessagesList(messages: state.messages, isSupport: true,);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ChatInputField(
                controller: _contentController,
                onSend: (content, images) {
                  if (content.isNotEmpty || images.isNotEmpty) {
                    context
                        .read<ChatsCubit>()
                        .sendSupportMessage(content, images);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
