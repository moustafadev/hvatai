import 'package:dartz/dartz.dart';
import 'package:hvatai/features/chat/data/models/chat/chat_model.dart';
import 'package:hvatai/features/chat/data/models/message/message_model.dart';
import 'package:hvatai/features/chat/data/models/send_message/send_message_model.dart';
import 'package:hvatai/features/chat/data/models/support_chat/support_chat_model.dart';
import 'package:hvatai/features/chat/domain/usecases/send_message.dart';

abstract class ChatRepository {
  Future<Either<String, List<ChatModel>>> getChats();

  Future<Either<String, List<MessageModel>>> getMessages(int chatId);
  Future<Either<String, List<MessageModel>>> getSupportMessages(int chatId);

  Future<Either<String, SendMessageModel>> sendMessage(
      SendMessageParams params);
  Future<Either<String, SendMessageModel>> sendSupportMessage(
      SendMessageParams params);

  Future<Either<String, void>> markMessageAsRead(int id);

  Future<Either<String, SupportChatModel>> getSupportChat();
}
