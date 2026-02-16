part of '../chat.dart';

class ChatSupportDetailsScreen extends StatefulWidget {
  final int chatId;

  const ChatSupportDetailsScreen({
    super.key,
    required this.chatId,
  });

  @override
  State<ChatSupportDetailsScreen> createState() =>
      _ChatSupportDetailsScreenState();
}

class _ChatSupportDetailsScreenState extends State<ChatSupportDetailsScreen> {
  final TextEditingController _contentController = TextEditingController();
  bool _hasInitialized = false;

  @override
  void initState() {
    super.initState();
    // Load support chat and messages when screen initializes
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initializeChat();
    });
  }

  void _initializeChat() {
    if (_hasInitialized) return;
    _hasInitialized = true;

    final cubit = ChatsCubit.get(context);

    // If chatId is 0 or invalid, load support chat first
    if (widget.chatId == 0) {
      cubit.getSupportChat().then((_) {
        if (!mounted) return;
        final supportChatId = cubit.state.supportChat?.id;
        if (supportChatId != null && supportChatId > 0) {
          cubit.markMessageAsRead(supportChatId);
          cubit.getSupportMessages(supportChatId);
        }
      });
    } else {
      // Use the provided chatId
      cubit.markMessageAsRead(widget.chatId);
      cubit.getSupportMessages(widget.chatId);
    }
  }

  @override
  Widget build(BuildContext context) {
    inChat = true;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        bottom: false,
        child: BlocBuilder<ChatsCubit, ChatsState>(
          builder: (context, state) {
            // Show full-screen loading if we're loading support chat or messages
            if (state.isLoadingSupportChat || state.isLoadingSupportMessages) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state.isError) {
              return Center(child: Text(state.errorMessage));
            }

            return Column(
              children: [
                const ChatDetailsSupportHeader(),
                const SizedBox(height: 16),
                Expanded(
                  child: ChatMessagesList(
                    messages: state.messages,
                    isSupport: true,
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
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _contentController.dispose();
    super.dispose();
  }
}
