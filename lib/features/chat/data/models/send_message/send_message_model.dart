import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/chat/data/models/message/message_model.dart';

part 'send_message_model.freezed.dart';
part 'send_message_model.g.dart';

@freezed
class SendMessageModel with _$SendMessageModel {
  const factory SendMessageModel({
    bool? success,
    bool? handled,
    SendMessageData? message,
    ChatMessageModel? chat,
  }) = _SendMessageModel;

  factory SendMessageModel.fromJson(Map<String, dynamic> json) =>
      _$SendMessageModelFromJson(json);
}

@freezed
class SendMessageData with _$SendMessageData {
  const factory SendMessageData({
    @JsonKey(name: 'chat_id') int? chatId,
    @JsonKey(name: 'chat_type') String? chatType,
    @JsonKey(name: 'sender_id') int? senderId,
    @JsonKey(name: 'sender_type') String? senderType,
    @JsonKey(name: 'receiver_id') int? receiverId,
    String? content,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_at') String? createdAt,
    int? id,
    List<String>? suggestions,
    SenderModel? sender,
    SenderModel? receiver,
    @JsonKey(name: 'images') List<MessageImageModel>? images,
    ChatMessageModel? chat,
    @JsonKey(name: 'replied_message') dynamic repliedMessage,
  }) = _SendMessageData;

  factory SendMessageData.fromJson(Map<String, dynamic> json) =>
      _$SendMessageDataFromJson(json);
}

@freezed
class ChatMessageModel with _$ChatMessageModel {
  const factory ChatMessageModel({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'participant_id') int? participantId,
    @JsonKey(name: 'chat_type') String? chatType,
    @JsonKey(name: 'support_agent_id') int? supportAgentId,
    @JsonKey(name: 'support_status') String? supportStatus,
    @JsonKey(name: 'assigned_at') String? assignedAt,
    @JsonKey(name: 'resolved_at') String? resolvedAt,
    @JsonKey(name: 'first_admin_response_at') String? firstAdminResponseAt,
    @JsonKey(name: 'bot_interaction_count') int? botInteractionCount,
    @JsonKey(name: 'is_escalated') bool? isEscalated,
    @JsonKey(name: 'escalated_at') String? escalatedAt,
    @JsonKey(name: 'escalation_reason') String? escalationReason,
    @JsonKey(name: 'bot_last_response_at') String? botLastResponseAt,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'support_agent') SenderModel? supportAgent,
    @JsonKey(name: 'last_message') LastMessageModel? lastMessage,
  }) = _ChatMessageModel;

  factory ChatMessageModel.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageModelFromJson(json);
}

@freezed
class LastMessageModel with _$LastMessageModel {
  const factory LastMessageModel({
    int? id,
    @JsonKey(name: 'chat_id') int? chatId,
    @JsonKey(name: 'chat_type') String? chatType,
    @JsonKey(name: 'sender_id') int? senderId,
    @JsonKey(name: 'sender_type') String? senderType,
    @JsonKey(name: 'is_bot') bool? isBot,
    @JsonKey(name: 'bot_intent') String? botIntent,
    @JsonKey(name: 'bot_confidence') String? botConfidence,
    @JsonKey(name: 'bot_reply_source') String? botReplySource,
    @JsonKey(name: 'bot_metadata') dynamic botMetadata,
    @JsonKey(name: 'receiver_id') int? receiverId,
    @JsonKey(name: 'reply_to') dynamic replyTo,
    String? content,
    @JsonKey(name: 'read_at') String? readAt,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    List<String>? suggestions,
  }) = _LastMessageModel;

  factory LastMessageModel.fromJson(Map<String, dynamic> json) =>
      _$LastMessageModelFromJson(json);
}

// Extension to add custom methods to SendMessageModel
extension SendMessageModelToMessageModel on SendMessageModel {
  MessageModel? toMessageModel() {
    if (message == null) return null;
    return MessageModel(
      id: message?.id,
      chatId: message?.chatId,
      senderId: message?.senderId,
      receiverId: message?.receiverId,
      replyTo: message?.repliedMessage,
      botIntent: message?.chat?.lastMessage?.botIntent,
      botConfidence: message?.chat?.lastMessage?.botConfidence,
      botReplySource: message?.chat?.lastMessage?.botReplySource,
      botMetadata: message?.chat?.lastMessage?.botMetadata,
      chat_type: message?.chatType,
      content: message?.content,
      readAt: null,
      createdAt: message?.createdAt,
      updatedAt: message?.updatedAt,
      sender: message?.sender,
      receiver: message?.receiver,
      images: message?.images ?? [],
      suggestions: message?.suggestions,
    );
  }
}