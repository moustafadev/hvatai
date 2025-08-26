import 'package:dio/dio.dart';
import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/chat/data/models/chat/chat_model.dart';
import 'package:hvatai/features/chat/data/models/message/message_model.dart';
import 'package:hvatai/features/chat/data/models/send_message/send_message_model.dart';
import 'package:hvatai/features/chat/data/models/support_chat/support_chat_model.dart';
import 'package:hvatai/features/chat/domain/usecases/send_message.dart';

class ApiServiceChat extends ApiBase {
  // Existing method for getting chats
  Future<List<ChatModel>> getChats() async {
    return executeAndHandleErrorServer<List<ChatModel>>(() async {
      final response = await get(ServerConfig.chats);

      if (response.statusCode == 200) {
        final json = response.json;
        print('Chat API response: $json');

        if (json is List) {
          return json.map((e) => ChatModel.fromJson(e)).toList();
        } else {
          throw Exception('Expected a list, but got ${json.runtimeType}');
        }
      } else {
        throw Exception('Failed to load chats');
      }
    });
  }

  // Existing method for getting messages
  Future<List<MessageModel>> getMessages(int chatId) async {
    return executeAndHandleErrorServer<List<MessageModel>>(() async {
      final response = await get(ServerConfig.chatMessages(chatId));

      if (response.statusCode == 200) {
        final json = response.json;
        print('Messages API response: $json');

        if (json is List) {
          return json.map((e) => MessageModel.fromJson(e)).toList();
        } else {
          throw Exception('Expected a list, but got ${json.runtimeType}');
        }
      } else {
        throw Exception('Failed to load messages');
      }
    });
  }

  Future<List<MessageModel>> getSupportMessages(int chatId) async {
    return executeAndHandleErrorServer<List<MessageModel>>(() async {
      final response = await get(ServerConfig.supportChatMessages(chatId));

      if (response.statusCode == 200) {
        final json = response.json;
        print('Messages API response: $json');
        final messagesJson = json['messages'] as List; // 👈 cast to List
        return messagesJson
            .map((e) => MessageModel.fromJson(e as Map<String, dynamic>))
            .toList(); // 👈 explicit List<MessageModel>
      } else {
        throw Exception('Failed to load messages');
      }
    });
  }

  Future<SendMessageModel> sendMessage(SendMessageParams params) async {
    return executeAndHandleErrorServer<SendMessageModel>(() async {
      final Map<String, dynamic> dataMap = {
        'receiver_id': params.receiverId,
        'content': params.content,
      };

      if (params.imagePaths.isNotEmpty) {
        for (int i = 0; i < params.imagePaths.length; i++) {
          final path = params.imagePaths[i];
          final fileName = path.split('/').last;
          dataMap['images[$i]'] = await MultipartFile.fromFile(
            path,
            filename: fileName,
          );
        }
      }

      final formData = FormData.fromMap(dataMap);

      final response = await post(ServerConfig.messages, body: formData);

      if (response.statusCode == 200 || response.statusCode == 201) {
        return SendMessageModel.fromJson(response.json);
      } else {
        throw Exception('Failed to send message');
      }
    });
  }

  Future<SendMessageModel> sendSupportMessage(SendMessageParams params) async {
    return executeAndHandleErrorServer<SendMessageModel>(() async {
      final Map<String, dynamic> dataMap = {
        'content': params.content,
      };

      if (params.imagePaths.isNotEmpty) {
        for (int i = 0; i < params.imagePaths.length; i++) {
          final path = params.imagePaths[i];
          final fileName = path.split('/').last;
          dataMap['images[$i]'] = await MultipartFile.fromFile(
            path,
            filename: fileName,
          );
        }
      }

      final formData = FormData.fromMap(dataMap);

      final response =
          await post(ServerConfig.sendSupportMessages, body: formData);

      if (response.statusCode == 200 || response.statusCode == 201) {
        return SendMessageModel.fromJson(response.json);
      } else {
        throw Exception('Failed to send message');
      }
    });
  }

  // 🔹 New method to mark a message as read
  Future<void> markMessageAsRead(int id) async {
    return executeAndHandleErrorServer<void>(() async {
      final response = await post(ServerConfig.markAsRead(id));

      if (response.statusCode != 200) {
        throw Exception('Failed to mark message as read');
      }
    });
  }

  Future<SupportChatModel> getSupportChat() async {
    return executeAndHandleErrorServer<SupportChatModel>(() async {
      final response = await get(ServerConfig.supportChat);

      if (response.statusCode == 200) {
        final json = response.json;

        return SupportChatModel.fromJson(json['chat']);
      } else {
        throw Exception('Failed to load support chat');
      }
    });
  }
}
