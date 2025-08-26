// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendMessageModelImpl _$$SendMessageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SendMessageModelImpl(
      id: (json['id'] as num?)?.toInt(),
      senderId: (json['senderId'] as num?)?.toInt(),
      receiverId: (json['receiverId'] as num?)?.toInt(),
      content: json['content'] as String?,
      chatId: (json['chatId'] as num?)?.toInt(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      sender: json['sender'] == null
          ? null
          : SenderModel.fromJson(json['sender'] as Map<String, dynamic>),
      receiver: json['receiver'] == null
          ? null
          : SenderModel.fromJson(json['receiver'] as Map<String, dynamic>),
      chat: json['chat'] == null
          ? null
          : ChatMessageModel.fromJson(json['chat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SendMessageModelImplToJson(
        _$SendMessageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'senderId': instance.senderId,
      'receiverId': instance.receiverId,
      'content': instance.content,
      'chatId': instance.chatId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'sender': instance.sender,
      'receiver': instance.receiver,
      'chat': instance.chat,
    };

_$ChatMessageModelImpl _$$ChatMessageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatMessageModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      participantId: (json['participantId'] as num?)?.toInt(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$ChatMessageModelImplToJson(
        _$ChatMessageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'participantId': instance.participantId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
