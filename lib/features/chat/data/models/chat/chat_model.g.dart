// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatModelImpl _$$ChatModelImplFromJson(Map<String, dynamic> json) =>
    _$ChatModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      participantId: (json['participant_id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      user: json['user'] == null
          ? null
          : UserChatModel.fromJson(json['user'] as Map<String, dynamic>),
      otherUser: json['other_user'] == null
          ? null
          : UserChatModel.fromJson(json['other_user'] as Map<String, dynamic>),
      unreadCount: (json['unread_count'] as num?)?.toInt(),
      participant: json['participant'] == null
          ? null
          : ParticipantModel.fromJson(
              json['participant'] as Map<String, dynamic>),
      lastMessage: json['last_message'] == null
          ? null
          : LastMessageModel.fromJson(
              json['last_message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChatModelImplToJson(_$ChatModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'participant_id': instance.participantId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'user': instance.user,
      'other_user': instance.otherUser,
      'unread_count': instance.unreadCount,
      'participant': instance.participant,
      'last_message': instance.lastMessage,
    };

_$UserChatModelImpl _$$UserChatModelImplFromJson(Map<String, dynamic> json) =>
    _$UserChatModelImpl(
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

Map<String, dynamic> _$$UserChatModelImplToJson(_$UserChatModelImpl instance) =>
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

_$ParticipantModelImpl _$$ParticipantModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ParticipantModelImpl(
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

Map<String, dynamic> _$$ParticipantModelImplToJson(
        _$ParticipantModelImpl instance) =>
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

_$LastMessageModelImpl _$$LastMessageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LastMessageModelImpl(
      id: (json['id'] as num?)?.toInt(),
      chatId: (json['chat_id'] as num?)?.toInt(),
      senderId: (json['sender_id'] as num?)?.toInt(),
      receiverId: (json['receiver_id'] as num?)?.toInt(),
      content: json['content'] as String?,
      readAt: json['read_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$LastMessageModelImplToJson(
        _$LastMessageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chat_id': instance.chatId,
      'sender_id': instance.senderId,
      'receiver_id': instance.receiverId,
      'content': instance.content,
      'read_at': instance.readAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
