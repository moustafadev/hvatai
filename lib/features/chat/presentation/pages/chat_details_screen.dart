part of '../chat.dart';

class ChatDetailsScreen extends StatelessWidget {
  final UserChatModel user;
  final int? chatId; // Make nullable for new chats

  const ChatDetailsScreen({
    super.key,
    required this.user,
    this.chatId, // Make nullable
  });

  @override
  Widget build(BuildContext context) {
    final contentController = TextEditingController();

    // Load messages if chatId exists
    if (chatId != null && chatId! > 0) {
      final cubit = ChatsCubit.get(context);
      if (cubit.state.currentChatId != chatId) {
        cubit.getMessages(chatId!);
      }
    }

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            ChatDetailsHeader(user: user),
            SizedBox(height: 16.h),
            Expanded(
              child: BlocBuilder<ChatsCubit, ChatsState>(
                builder: (context, state) {
                  // For new chats (no chatId), show messages from state
                  // (will be empty initially, but will have messages after sending)
                  final effectiveChatId = chatId ?? state.currentChatId;

                  if (effectiveChatId == null || effectiveChatId == 0) {
                    return ChatMessagesList(messages: state.messages);
                  }

                  if (state.isLoadingMessages) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (state.isError) {
                    return Center(child: Text(state.errorMessage));
                  }

                  return ChatMessagesList(messages: state.messages);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ChatInputField(
                controller: contentController,
                onSend: (content, images) {
                  if (content.isNotEmpty || images.isNotEmpty) {
                    final receiverId = user.id ?? 0;
                    context
                        .read<ChatsCubit>()
                        .sendMessage(content, receiverId, images);
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
