// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SupportChatModelImpl _$$SupportChatModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SupportChatModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      participantId: (json['participant_id'] as num?)?.toInt(),
      chatType: json['chat_type'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      supportAgentId: (json['support_agent_id'] as num?)?.toInt(),
      supportStatus: json['support_status'] as String?,
      assignedAt: json['assigned_at'] as String?,
      resolvedAt: json['resolved_at'] as String?,
      unreadCount: (json['unread_count'] as num?)?.toInt(),
      lastMessage: json['last_message'] == null
          ? null
          : LastMessageModel.fromJson(
              json['last_message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SupportChatModelImplToJson(
        _$SupportChatModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'participant_id': instance.participantId,
      'chat_type': instance.chatType,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'support_agent_id': instance.supportAgentId,
      'support_status': instance.supportStatus,
      'assigned_at': instance.assignedAt,
      'resolved_at': instance.resolvedAt,
      'unread_count': instance.unreadCount,
      'last_message': instance.lastMessage,
    };
