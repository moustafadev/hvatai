// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadMessageModelImpl _$$ReadMessageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadMessageModelImpl(
      messageIds: (json['message_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      readBy: (json['read_by'] as num).toInt(),
      chatId: (json['chat_id'] as num).toInt(),
    );

Map<String, dynamic> _$$ReadMessageModelImplToJson(
        _$ReadMessageModelImpl instance) =>
    <String, dynamic>{
      'message_ids': instance.messageIds,
      'read_by': instance.readBy,
      'chat_id': instance.chatId,
    };
