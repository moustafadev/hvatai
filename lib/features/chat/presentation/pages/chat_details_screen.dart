part of '../chat.dart';

class ChatDetailsScreen extends StatelessWidget {
  final UserChatModel user;
  final int chatId;

  ChatDetailsScreen({
    super.key,
    required this.user,
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
            ChatDetailsHeader(user: user),
            SizedBox(height: 16.h),
            Expanded(
              child: BlocBuilder<ChatsCubit, ChatsState>(
                builder: (context, state) {
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
                controller: _contentController,
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
