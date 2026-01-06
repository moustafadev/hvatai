import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';

part 'chat_model.freezed.dart';
part 'chat_model.g.dart';

@freezed
class ChatModel with _$ChatModel {
  const factory ChatModel({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'participant_id') int? participantId,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    UserChatModel? user,
    @JsonKey(name: 'other_user') UserChatModel? otherUser,
    @JsonKey(name: 'unread_count') int? unreadCount,
    ParticipantModel? participant,
    @JsonKey(name: 'last_message') LastMessageModel? lastMessage,
  }) = _ChatModel;

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);
}

@freezed
class UserChatModel with _$UserChatModel {
  const factory UserChatModel({
    int? id,
    @JsonKey(name: 'business_id') int? businessId,
    String? email,
    String? name,
    String? role,
    String? phone,
    String? image,
    @JsonKey(name: 'image_business') String? imageBusiness,
    String? lang,
    String? sms,
    @JsonKey(name: 'send_email') String? sendEmail,
    String? push,
    String? status,
    @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'personal_rating') int? personalRating,
    @JsonKey(name: 'personal_rating_count') int? personalRatingCount,
    @JsonKey(name: 'business_rating') int? businessRating,
    @JsonKey(name: 'business_rating_count') int? businessRatingCount,
  }) = _UserChatModel;

  String get fullImageUrl => image != null ? "${ServerConfig.domenStorage}$image" : "";
  String get fullImageBusinessUrl =>
      imageBusiness != null ? "${ServerConfig.domenStorage}$imageBusiness" : "";

  factory UserChatModel.fromJson(Map<String, dynamic> json) =>
      _$UserChatModelFromJson(json);

  const UserChatModel._();
}

@freezed
class ParticipantModel with _$ParticipantModel {
  const factory ParticipantModel({
    int? id,
    @JsonKey(name: 'business_id') int? businessId,
    String? email,
    String? name,
    String? role,
    String? phone,
    String? image,
    @JsonKey(name: 'image_business') String? imageBusiness,
    String? lang,
    String? sms,
    @JsonKey(name: 'send_email') String? sendEmail,
    String? push,
    String? status,
    @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'personal_rating') int? personalRating,
    @JsonKey(name: 'personal_rating_count') int? personalRatingCount,
    @JsonKey(name: 'business_rating') int? businessRating,
    @JsonKey(name: 'business_rating_count') int? businessRatingCount,
  }) = _ParticipantModel;
  String get fullImageUrl => image != null ? "${ServerConfig.domenStorage}$image" : "";
  String get fullImageBusinessUrl =>
      imageBusiness != null ? "${ServerConfig.domenStorage}$imageBusiness" : "";

  factory ParticipantModel.fromJson(Map<String, dynamic> json) =>
      _$ParticipantModelFromJson(json);

  const ParticipantModel._();
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
