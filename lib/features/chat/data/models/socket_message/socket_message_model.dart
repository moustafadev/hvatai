import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/chat/data/models/message/message_model.dart';

part 'socket_message_model.freezed.dart';
part 'socket_message_model.g.dart';

@freezed
class SocketMessageModel with _$SocketMessageModel {
  const factory SocketMessageModel({
    required SocketMessage message,
  }) = _SocketMessageModel;

  factory SocketMessageModel.fromJson(Map<String, dynamic> json) =>
      _$SocketMessageModelFromJson(json);
}

@freezed
class SocketMessage with _$SocketMessage {
  const factory SocketMessage({
    required int id,
    String? content,
    @JsonKey(name: 'created_at') String? createdAt,
    SenderReceiverModel? sender,
    SenderReceiverModel? receiver,
    @JsonKey(name: 'images') List<MessageImageModel>? images,
    @JsonKey(name: 'reply_to') dynamic replyTo,
    @JsonKey(name: 'chat_id') int? chatId,
    List<String>? suggestions,
    @JsonKey(name: 'bot_intent') String? botIntent,
    @JsonKey(name: 'bot_confidence') String? botConfidence,
    @JsonKey(name: 'bot_reply_source') String? botReplySource,
    @JsonKey(name: 'bot_metadata') dynamic botMetadata,
  }) = _SocketMessage;

  factory SocketMessage.fromJson(Map<String, dynamic> json) =>
      _$SocketMessageFromJson(json);
}

@freezed
class SenderReceiverModel with _$SenderReceiverModel {
  const factory SenderReceiverModel({
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
  }) = _SenderReceiverModel;

  factory SenderReceiverModel.fromJson(Map<String, dynamic> json) =>
      _$SenderReceiverModelFromJson(json);
}

extension SocketMessageMapper on SocketMessage {
  MessageModel toMessageModel() {
    return MessageModel(
      id: id,
      chatId: chatId,
      senderId: sender?.id,
      receiverId: receiver?.id,
      content: content,
      readAt: null,
      createdAt: createdAt,
      updatedAt: createdAt,
      sender: sender != null
          ? SenderModel(
              id: sender?.id,
              businessId: sender?.businessId,
              email: sender?.email,
              name: sender?.name,
              role: sender?.role,
              phone: sender?.phone,
              image: sender?.image,
              imageBusiness: sender?.imageBusiness,
              lang: sender?.lang,
              sms: sender?.sms,
              sendEmail: sender?.sendEmail,
              push: sender?.push,
              status: sender?.status,
              emailVerifiedAt: sender?.emailVerifiedAt,
              createdAt: sender?.createdAt,
              updatedAt: sender?.updatedAt,
              personalRating: sender?.personalRating,
              personalRatingCount: sender?.personalRatingCount,
              businessRating: sender?.businessRating,
              businessRatingCount: sender?.businessRatingCount,
            )
          : null,
      images: images ?? [],
      suggestions: suggestions,
      botIntent: botIntent,
      botConfidence: botConfidence,
      botReplySource: botReplySource,
      botMetadata: botMetadata,
    );
  }
}
