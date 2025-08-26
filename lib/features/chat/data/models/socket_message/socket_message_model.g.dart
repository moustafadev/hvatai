// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocketMessageModelImpl _$$SocketMessageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SocketMessageModelImpl(
      message: SocketMessage.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SocketMessageModelImplToJson(
        _$SocketMessageModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$SocketMessageImpl _$$SocketMessageImplFromJson(Map<String, dynamic> json) =>
    _$SocketMessageImpl(
      id: (json['id'] as num).toInt(),
      content: json['content'] as String?,
      createdAt: json['created_at'] as String?,
      sender: json['sender'] == null
          ? null
          : SenderReceiverModel.fromJson(
              json['sender'] as Map<String, dynamic>),
      receiver: json['receiver'] == null
          ? null
          : SenderReceiverModel.fromJson(
              json['receiver'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => MessageImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      replyTo: json['reply_to'],
      chatId: (json['chat_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SocketMessageImplToJson(_$SocketMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'created_at': instance.createdAt,
      'sender': instance.sender,
      'receiver': instance.receiver,
      'images': instance.images,
      'reply_to': instance.replyTo,
      'chat_id': instance.chatId,
    };

_$SenderReceiverModelImpl _$$SenderReceiverModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SenderReceiverModelImpl(
      id: (json['id'] as num?)?.toInt(),
      businessId: (json['business_id'] as num?)?.toInt(),
      email: json['email'] as String?,
      name: json['name'] as String?,
      role: json['role'] as String?,
      phone: json['phone'] as String?,
      image: json['image'] as String?,
      imageBusiness: json['image_business'] as String?,
      lang: json['lang'] as String?,
      visibility: json['visibility'] as String?,
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

Map<String, dynamic> _$$SenderReceiverModelImplToJson(
        _$SenderReceiverModelImpl instance) =>
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
