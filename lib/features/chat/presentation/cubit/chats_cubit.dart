import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hvatai/core/datasources/local/app_local.dart';
import 'package:hvatai/features/chat/data/models/chat/chat_model.dart';
import 'package:hvatai/features/chat/data/models/message/message_model.dart';
import 'package:hvatai/features/chat/data/models/support_chat/support_chat_model.dart';
import 'package:hvatai/features/chat/domain/usecases/get_chats_usecase.dart';
import 'package:hvatai/features/chat/domain/usecases/get_messages_usecase.dart';
import 'package:hvatai/features/chat/domain/usecases/get_support_chat_usecase.dart';
import 'package:hvatai/features/chat/domain/usecases/get_support_messages_usecase.dart';
import 'package:hvatai/features/chat/domain/usecases/mark_as_read_usecase.dart';
import 'package:hvatai/features/chat/domain/usecases/send_message.dart';
import 'package:hvatai/features/chat/domain/usecases/send_support_messages_usecase.dart';
import 'package:hvatai/features/home/presentation/home.dart';
import 'package:hvatai/locator.dart';

import 'package:toastification/toastification.dart';

part 'chats_state.dart';

class ChatsCubit extends Cubit<ChatsState> {
  final GetChatsUseCase _getChatsUseCase;
  final GetMessagesUseCase _getMessagesUseCase;
  final SendMessageUseCase _sendMessageUseCase;
  final MarkMessageAsReadUseCase _markMessageAsReadUseCase;

// 🔹 New support chat use cases
  final GetSupportChatUseCase _getSupportChatUseCase;
  final GetSupportMessagesUseCase _getSupportMessagesUseCase;
  final SendSupportMessagesUseCase _sendSupportMessagesUseCase;

  ChatsCubit(
    this._getChatsUseCase,
    this._getMessagesUseCase,
    this._sendMessageUseCase,
    this._markMessageAsReadUseCase,
    this._getSupportChatUseCase,
    this._getSupportMessagesUseCase,
    this._sendSupportMessagesUseCase,
  ) : super(const ChatsState(
          chats: [],
          messages: [],
          isLoading: false,
          isLoadingMessages: false,
          isError: false,
          isSendedMessage: false,
          errorMessage: '',
        ));

  static ChatsCubit get(context) => BlocProvider.of(context);

  // 🔹 Fetch support chat
  Future<void> getSupportChat() async {
    emit(state.copyWith(isLoadingSupportChat: true));

    final res = await _getSupportChatUseCase.call();
    res.fold(
      (failure) => emit(state.copyWith(
        isError: true,
        isLoadingSupportChat: false,
        errorMessage: failure,
      )),
      (chat) => emit(state.copyWith(
        supportChat: chat,
        isError: false,
        errorMessage: '',
        isLoadingSupportChat: false,
      )),
    );
  }

  // 🔹 Fetch support messages
  Future<void> getSupportMessages(int chatId) async {
    emit(state.copyWith(isLoadingSupportMessages: true));

    final res = await _getSupportMessagesUseCase.call(chatId);
    res.fold(
      (failure) => emit(state.copyWith(
        isError: true,
        isLoadingSupportMessages: false,
        errorMessage: failure,
      )),
      (messages) => emit(state.copyWith(
        messages: messages,
        errorMessage: '',
        isError: false,
        currentChatId: chatId,
        isLoadingSupportMessages: false,
      )),
    );
  }

  void sendSupportMessage(
    String content,
    List<String> imagePaths,
  ) async {
    final tempId =
        DateTime.now().millisecondsSinceEpoch * -1; // negative temp ID
    final tempMessage = MessageModel(
      id: tempId,
      chatId: state.supportChat?.id, // 👈 support chat id
      senderId: locator<AppLocal>().getUserId(),
      content: content,
      receiverId: 0,
      localImages: List.from(imagePaths), // include local images for preview
      createdAt: DateTime.now().toIso8601String(),
      updatedAt: DateTime.now().toIso8601String(),
      readAt: null,
      sender: null,
    );

    // Step 1: Optimistically add to supportMessages
    final updatedMessages = List<MessageModel>.from(state.messages)
      ..add(tempMessage);
    emit(state.copyWith(messages: updatedMessages));

    final params = SendMessageParams(
      content: content,
      imagePaths: imagePaths,
    );

    final res = await _sendSupportMessagesUseCase.call(params);

    res.fold(
      (failure) {
        // Step 2: Remove optimistic message on error
        final updatedMessages =
            state.messages.where((m) => m.id != tempId).toList();
        emit(state.copyWith(
          messages: updatedMessages,
          isError: true,
          errorMessage: failure,
        ));
      },
      (sentMessage) {
        emit(state.copyWith(
            isSendedMessage: true, isError: false, errorMessage: ''));
      },
    );
  }

  void setIsSendedMessage(bool value) {
    emit(state.copyWith(isSendedMessage: value));
  }

  void getChats() async {
    emit(state.copyWith(isLoading: true));

    final res = await _getChatsUseCase.call();

    res.fold(
      (failure) => emit(state.copyWith(
          isError: true, isLoading: false, errorMessage: failure)),
      (chats) => emit(state.copyWith(
          chats: chats, isLoading: false, isError: false, errorMessage: '')),
    );
  }

  void getMessages(int chatId) async {
    emit(state.copyWith(isLoadingMessages: true));

    final res = await _getMessagesUseCase.call(chatId);

    res.fold(
      (failure) => emit(state.copyWith(isError: true, errorMessage: failure)),
      (messages) => emit(state.copyWith(
        messages: messages,
        currentChatId: chatId,
        isError: false,
        errorMessage: '',
        isLoadingMessages: false,
      )),
    );
  }

  void addMessage(MessageModel message) {
    /// if message is exists don't add it
    if (state.messages.any((m) => m.id == message.id)) {
      return;
    }
    final updatedMessages = List<MessageModel>.from(state.messages)
      ..add(message);
    emit(state.copyWith(messages: updatedMessages));
  }

  void sendMessage(
    String content,
    int receiverId,
    List<String> imagePaths,
  ) async {
    final tempId = DateTime.now().millisecondsSinceEpoch *
        -1; // negative ID to indicate "temp"
    final tempMessage = MessageModel(
      id: tempId,
      chatId: state.currentChatId,
      senderId: locator<AppLocal>().getUserId(),
      receiverId: receiverId,
      content: content,
      localImages: List.from(
          imagePaths), // 👈 include local images // optionally handle pre-uploaded image previews
      createdAt: DateTime.now().toIso8601String(),
      updatedAt: DateTime.now().toIso8601String(),
      readAt: null,
      sender: null,
    );

    // Step 1: Optimistically add to UI
    final updatedMessages = List<MessageModel>.from(state.messages)
      ..add(tempMessage);
    emit(state.copyWith(messages: updatedMessages));

    final params = SendMessageParams(
      content: content,
      receiverId: receiverId,
      imagePaths: imagePaths,
    );

    final res = await _sendMessageUseCase.call(params);

    res.fold(
      (failure) {
        // Step 2: Remove optimistic message on error
        final updatedMessages =
            state.messages.where((m) => m.id != tempId).toList();
        emit(state.copyWith(
            messages: updatedMessages, isError: true, errorMessage: failure));
      },
      (sentMessage) {
        // Store chatId from response if this is a new chat
        final newChatId = sentMessage.message?.chatId ?? sentMessage.chat?.id;
        if (newChatId != null && state.currentChatId == null) {
          emit(state.copyWith(
            currentChatId: newChatId,
            isSendedMessage: true,
            isError: false,
            errorMessage: '',
          ));
        } else {
          emit(state.copyWith(
              isSendedMessage: true, isError: false, errorMessage: ''));
        }
        // Step 3: Replace temp message with real one (or just wait for socket update)
        // Optional: You can update UI now, or wait for socket message
      },
    );
  }

  Future markMessageAsRead(int chatId) async {
    final res = await _markMessageAsReadUseCase.call(chatId);

    res.fold(
      (failure) => emit(state.copyWith(isError: true, errorMessage: failure)),
      (_) {
        // locator<HomeSummaryCubit>()..loadSummary();

        final updatedChats = state.chats.map((chat) {
          if (chat.id == chatId) {
            return chat.copyWith(unreadCount: 0);
          }
          return chat;
        }).toList();

        emit(state.copyWith(
            chats: updatedChats, isError: false, errorMessage: ''));
      },
    );
  }

  void markLastMessageAsReadInChat(int chatId) {
    final now = DateTime.now().toIso8601String();

    final updatedChats = state.chats.map((chat) {
      if (chat.id == chatId && chat.lastMessage != null) {
        return chat.copyWith(
          lastMessage: chat.lastMessage!.copyWith(readAt: now),
        );
      }
      return chat;
    }).toList();

    emit(state.copyWith(chats: updatedChats));
  }

  void markAllMessagesAsReadLocally() {
    final now = DateTime.now().toIso8601String();

    final updatedMessages = state.messages.map((message) {
      if (message.readAt == null) {
        return message.copyWith(readAt: now);
      }
      return message;
    }).toList();

    emit(state.copyWith(messages: updatedMessages));
  }

  /// Find chat by participant ID (receiver ID)
  ChatModel? findChatByParticipantId(int participantId) {
    try {
      return state.chats.firstWhere(
        (chat) => chat.participantId == participantId,
      );
    } catch (e) {
      return null;
    }
  }

  void updateChatWithNewMessage(MessageModel message) {
    // 🔹 Update normal chats
    final updatedChats = state.chats.map((chat) {
      if (chat.id == message.chatId) {
        return chat.copyWith(
          lastMessage: LastMessageModel(
            id: message.id,
            chatId: message.chatId,
            senderId: message.senderId,
            receiverId: message.receiverId,
            content: message.content,
            readAt: message.readAt,
            createdAt: message.createdAt,
            updatedAt: message.updatedAt,
          ),
        );
      }
      return chat;
    }).toList();

    // 🔹 Update support chat if this message belongs to it
    SupportChatModel? updatedSupportChat = state.supportChat;
    if (state.supportChat != null && state.supportChat?.id == message.chatId) {
      updatedSupportChat = state.supportChat!.copyWith(
        lastMessage: LastMessageModel(
          id: message.id,
          chatId: message.chatId,
          senderId: message.senderId,
          receiverId: message.receiverId,
          content: message.content,
          readAt: message.readAt,
          createdAt: message.createdAt,
          updatedAt: message.updatedAt,
        ),
      );
    }

    // 🔹 Show toast if not in chat
    if (!inChat) {
      toastification.show(
        title: const Text('New Message'),
        description: Text("${message.sender?.name} : ${message.content}"),
        icon: const Icon(Icons.message, color: Colors.grey),
        type: ToastificationType.info,
        style: ToastificationStyle.flat,
        alignment: Alignment.topCenter,
        autoCloseDuration: const Duration(seconds: 3),
        animationDuration: const Duration(milliseconds: 300),
        borderRadius: BorderRadius.circular(12),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 50),
      );
    }

    // 🔹 Emit updated state
    emit(state.copyWith(
      chats: updatedChats,
      supportChat: updatedSupportChat,
    ));
  }
}
