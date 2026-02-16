// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageModelImpl _$$MessageModelImplFromJson(Map<String, dynamic> json) =>
    _$MessageModelImpl(
      id: (json['id'] as num?)?.toInt(),
      chatId: (json['chat_id'] as num?)?.toInt(),
      senderId: (json['sender_id'] as num?)?.toInt(),
      receiverId: (json['receiver_id'] as num?)?.toInt(),
      content: json['content'] as String?,
      readAt: json['read_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      replyTo: (json['reply_to'] as num?)?.toInt(),
      sender: json['sender'] == null
          ? null
          : SenderModel.fromJson(json['sender'] as Map<String, dynamic>),
      receiver: json['receiver'] == null
          ? null
          : SenderModel.fromJson(json['receiver'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => MessageImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      localImages: (json['localImages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      suggestions: (json['suggestions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      botIntent: json['bot_intent'] as String?,
      botConfidence: json['bot_confidence'] as String?,
      botReplySource: json['bot_reply_source'] as String?,
      botMetadata: json['bot_metadata'],
    );

Map<String, dynamic> _$$MessageModelImplToJson(_$MessageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chat_id': instance.chatId,
      'sender_id': instance.senderId,
      'receiver_id': instance.receiverId,
      'content': instance.content,
      'read_at': instance.readAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'reply_to': instance.replyTo,
      'sender': instance.sender,
      'receiver': instance.receiver,
      'images': instance.images,
      'localImages': instance.localImages,
      'suggestions': instance.suggestions,
      'bot_intent': instance.botIntent,
      'bot_confidence': instance.botConfidence,
      'bot_reply_source': instance.botReplySource,
      'bot_metadata': instance.botMetadata,
    };

_$MessageImageModelImpl _$$MessageImageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageImageModelImpl(
      id: (json['id'] as num?)?.toInt(),
      messageId: (json['message_id'] as num?)?.toInt(),
      path: json['path'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$MessageImageModelImplToJson(
        _$MessageImageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message_id': instance.messageId,
      'path': instance.path,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$SenderModelImpl _$$SenderModelImplFromJson(Map<String, dynamic> json) =>
    _$SenderModelImpl(
      id: (json['id'] as num?)?.toInt(),
      businessId: (json['business_id'] as num?)?.toInt(),
      email: json['email'] as String?,
      name: json['name'] as String?,
      role: json['role'] as String?,
      phone: json['phone'] as String?,
      image: json['image'] as String?,
      imageBusiness: json['image_business'] as String?,
      lang: json['lang'] as String?,
      visibility: json['visibility'] == null
          ? null
          : VisibilityModel.fromJson(
              json['visibility'] as Map<String, dynamic>),
      sms: json['sms'] as String?,
      sendEmail: json['send_email'] as String?,
      push: json['push'] as String?,
      status: json['status'] as String?,
      emailVerifiedAt: json['email_verified_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      personalRating: (json['personal_rating'] as num?)?.toInt(),
      personalRatingCount: (json['personal_rating_count'] as num?)?.toInt(),
      businessRating: (json['business_rating'] as num?)?.toInt(),
      businessRatingCount: (json['business_rating_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SenderModelImplToJson(_$SenderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'business_id': instance.businessId,
      'email': instance.email,
      'name': instance.name,
      'role': instance.role,
      'phone': instance.phone,
      'image': instance.image,
      'image_business': instance.imageBusiness,
      'lang': instance.lang,
      'visibility': instance.visibility,
      'sms': instance.sms,
      'send_email': instance.sendEmail,
      'push': instance.push,
      'status': instance.status,
      'email_verified_at': instance.emailVerifiedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'personal_rating': instance.personalRating,
      'personal_rating_count': instance.personalRatingCount,
      'business_rating': instance.businessRating,
      'business_rating_count': instance.businessRatingCount,
    };

_$VisibilityModelImpl _$$VisibilityModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VisibilityModelImpl(
      profile: json['profile'] as bool,
      phone: json['phone'] as bool,
      email: json['email'] as bool,
    );

Map<String, dynamic> _$$VisibilityModelImplToJson(
        _$VisibilityModelImpl instance) =>
    <String, dynamic>{
      'profile': instance.profile,
      'phone': instance.phone,
      'email': instance.email,
    };
