part of 'chats_cubit.dart';

class ChatsState extends Equatable {
  final List<ChatModel> chats;
  final List<MessageModel> messages;
  final bool isLoading;
  final bool isLoadingMessages;
  final bool isError;
  final bool isSendedMessage;
  final String errorMessage;
  final int? currentChatId;

  // 🔹 New fields for support chat
  final SupportChatModel? supportChat;
  final bool isLoadingSupportChat;
  final bool isLoadingSupportMessages;
  final bool isSendingSupportMessage;

  const ChatsState({
    required this.chats,
    required this.messages,
    required this.isLoading,
    required this.isLoadingMessages,
    required this.isError,
    required this.errorMessage,
    required this.isSendedMessage,
    this.currentChatId,
    this.supportChat,
    this.isLoadingSupportChat = false,
    this.isLoadingSupportMessages = false,
    this.isSendingSupportMessage = false,
  });

  ChatsState copyWith({
    List<ChatModel>? chats,
    List<MessageModel>? messages,
    bool? isLoading,
    bool? isLoadingMessages,
    bool? isError,
    String? errorMessage,
    int? currentChatId,
    bool? isSendedMessage,

    // 🔹 Support chat fields
    SupportChatModel? supportChat,
    bool? isLoadingSupportChat,
    bool? isLoadingSupportMessages,
    bool? isSendingSupportMessage,
  }) {
    return ChatsState(
      chats: chats ?? this.chats,
      messages: messages ?? this.messages,
      isLoading: isLoading ?? this.isLoading,
      isLoadingMessages: isLoadingMessages ?? this.isLoadingMessages,
      isError: isError ?? this.isError,
      errorMessage: errorMessage ?? this.errorMessage,
      currentChatId: currentChatId ?? this.currentChatId,
      isSendedMessage: isSendedMessage ?? this.isSendedMessage,

      // 🔹 Support chat fields
      supportChat: supportChat ?? this.supportChat,
      isLoadingSupportChat: isLoadingSupportChat ?? this.isLoadingSupportChat,
      isLoadingSupportMessages:
          isLoadingSupportMessages ?? this.isLoadingSupportMessages,
      isSendingSupportMessage:
          isSendingSupportMessage ?? this.isSendingSupportMessage,
    );
  }

  @override
  List<Object?> get props => [
        chats,
        messages,
        isLoading,
        isLoadingMessages,
        isError,
        errorMessage,
        isSendedMessage,
        currentChatId,
        supportChat,
        isLoadingSupportChat,
        isLoadingSupportMessages,
        isSendingSupportMessage,
      ];
}
