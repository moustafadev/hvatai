import 'package:dartz/dartz.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/chat/data/datasources/api_service_chat.dart';
import 'package:hvatai/features/chat/data/models/chat/chat_model.dart';
import 'package:hvatai/features/chat/data/models/message/message_model.dart';
import 'package:hvatai/features/chat/data/models/send_message/send_message_model.dart';
import 'package:hvatai/features/chat/data/models/support_chat/support_chat_model.dart';
import 'package:hvatai/features/chat/domain/repositories/chat_repository.dart';
import 'package:hvatai/features/chat/domain/usecases/send_message.dart';

class ChatImplRepository implements ChatRepository {
  final ApiServiceChat _apiChatService;

  ChatImplRepository(this._apiChatService);

  @override
  Future<Either<String, List<ChatModel>>> getChats() {
    return executeAndHandleError<List<ChatModel>>(() async {
      final res = await _apiChatService.getChats();
      return res;
    });
  }

  @override
  Future<Either<String, List<MessageModel>>> getMessages(int chatId) {
    return executeAndHandleError<List<MessageModel>>(() async {
      final res = await _apiChatService.getMessages(chatId);
      return res;
    });
  }

  @override
  Future<Either<String, List<MessageModel>>> getSupportMessages(int chatId) {
    return executeAndHandleError<List<MessageModel>>(() async {
      final res = await _apiChatService.getSupportMessages(chatId);
      return res;
    });
  }

  @override
  Future<Either<String, SendMessageModel>> sendMessage(
      SendMessageParams params) {
    // Create a local immutable copy of imagePaths to prevent mutation
    final localParams = SendMessageParams(
      content: params.content,
      receiverId: params.receiverId,
      imagePaths: List.from(params.imagePaths),
    );

    return executeAndHandleError<SendMessageModel>(() async {
      return await _apiChatService.sendMessage(localParams);
    });
  }

  @override
  Future<Either<String, SendMessageModel>> sendSupportMessage(
      SendMessageParams params) {
    // Create a local immutable copy of imagePaths to prevent mutation
    final localParams = SendMessageParams(
      content: params.content,
      imagePaths: List.from(params.imagePaths),
    );

    return executeAndHandleError<SendMessageModel>(() async {
      return await _apiChatService.sendSupportMessage(localParams);
    });
  }

  @override
  Future<Either<String, void>> markMessageAsRead(int id) {
    return executeAndHandleError<void>(() async {
      return await _apiChatService.markMessageAsRead(id);
    });
  }

  // 🔹 New: Get support chat
  @override
  Future<Either<String, SupportChatModel>> getSupportChat() {
    return executeAndHandleError<SupportChatModel>(() async {
      final res = await _apiChatService.getSupportChat();
      return res;
    });
  }
}
