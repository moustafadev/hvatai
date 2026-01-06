// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendMessageModelImpl _$$SendMessageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SendMessageModelImpl(
      success: json['success'] as bool?,
      handled: json['handled'] as bool?,
      message: json['message'] == null
          ? null
          : SendMessageData.fromJson(json['message'] as Map<String, dynamic>),
      chat: json['chat'] == null
          ? null
          : ChatMessageModel.fromJson(json['chat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SendMessageModelImplToJson(
        _$SendMessageModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'handled': instance.handled,
      'message': instance.message,
      'chat': instance.chat,
    };

_$SendMessageDataImpl _$$SendMessageDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SendMessageDataImpl(
      chatId: (json['chat_id'] as num?)?.toInt(),
      chatType: json['chat_type'] as String?,
      senderId: (json['sender_id'] as num?)?.toInt(),
      senderType: json['sender_type'] as String?,
      receiverId: (json['receiver_id'] as num?)?.toInt(),
      content: json['content'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdAt: json['created_at'] as String?,
      id: (json['id'] as num?)?.toInt(),
      suggestions: (json['suggestions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      sender: json['sender'] == null
          ? null
          : SenderModel.fromJson(json['sender'] as Map<String, dynamic>),
      receiver: json['receiver'] == null
          ? null
          : SenderModel.fromJson(json['receiver'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => MessageImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      chat: json['chat'] == null
          ? null
          : ChatMessageModel.fromJson(json['chat'] as Map<String, dynamic>),
      repliedMessage: json['replied_message'],
    );

Map<String, dynamic> _$$SendMessageDataImplToJson(
        _$SendMessageDataImpl instance) =>
    <String, dynamic>{
      'chat_id': instance.chatId,
      'chat_type': instance.chatType,
      'sender_id': instance.senderId,
      'sender_type': instance.senderType,
      'receiver_id': instance.receiverId,
      'content': instance.content,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
      'id': instance.id,
      'suggestions': instance.suggestions,
      'sender': instance.sender,
      'receiver': instance.receiver,
      'images': instance.images,
      'chat': instance.chat,
      'replied_message': instance.repliedMessage,
    };

_$ChatMessageModelImpl _$$ChatMessageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatMessageModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      participantId: (json['participant_id'] as num?)?.toInt(),
      chatType: json['chat_type'] as String?,
      supportAgentId: (json['support_agent_id'] as num?)?.toInt(),
      supportStatus: json['support_status'] as String?,
      assignedAt: json['assigned_at'] as String?,
      resolvedAt: json['resolved_at'] as String?,
      firstAdminResponseAt: json['first_admin_response_at'] as String?,
      botInteractionCount: (json['bot_interaction_count'] as num?)?.toInt(),
      isEscalated: json['is_escalated'] as bool?,
      escalatedAt: json['escalated_at'] as String?,
      escalationReason: json['escalation_reason'] as String?,
      botLastResponseAt: json['bot_last_response_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      supportAgent: json['support_agent'] == null
          ? null
          : SenderModel.fromJson(json['support_agent'] as Map<String, dynamic>),
      lastMessage: json['last_message'] == null
          ? null
          : LastMessageModel.fromJson(
              json['last_message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChatMessageModelImplToJson(
        _$ChatMessageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'participant_id': instance.participantId,
      'chat_type': instance.chatType,
      'support_agent_id': instance.supportAgentId,
      'support_status': instance.supportStatus,
      'assigned_at': instance.assignedAt,
      'resolved_at': instance.resolvedAt,
      'first_admin_response_at': instance.firstAdminResponseAt,
      'bot_interaction_count': instance.botInteractionCount,
      'is_escalated': instance.isEscalated,
      'escalated_at': instance.escalatedAt,
      'escalation_reason': instance.escalationReason,
      'bot_last_response_at': instance.botLastResponseAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'support_agent': instance.supportAgent,
      'last_message': instance.lastMessage,
    };

_$LastMessageModelImpl _$$LastMessageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LastMessageModelImpl(
      id: (json['id'] as num?)?.toInt(),
      chatId: (json['chat_id'] as num?)?.toInt(),
      chatType: json['chat_type'] as String?,
      senderId: (json['sender_id'] as num?)?.toInt(),
      senderType: json['sender_type'] as String?,
      isBot: json['is_bot'] as bool?,
      botIntent: json['bot_intent'] as String?,
      botConfidence: json['bot_confidence'] as String?,
      botReplySource: json['bot_reply_source'] as String?,
      botMetadata: json['bot_metadata'],
      receiverId: (json['receiver_id'] as num?)?.toInt(),
      replyTo: json['reply_to'],
      content: json['content'] as String?,
      readAt: json['read_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      suggestions: (json['suggestions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$LastMessageModelImplToJson(
        _$LastMessageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chat_id': instance.chatId,
      'chat_type': instance.chatType,
      'sender_id': instance.senderId,
      'sender_type': instance.senderType,
      'is_bot': instance.isBot,
      'bot_intent': instance.botIntent,
      'bot_confidence': instance.botConfidence,
      'bot_reply_source': instance.botReplySource,
      'bot_metadata': instance.botMetadata,
      'receiver_id': instance.receiverId,
      'reply_to': instance.replyTo,
      'content': instance.content,
      'read_at': instance.readAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'suggestions': instance.suggestions,
    };
