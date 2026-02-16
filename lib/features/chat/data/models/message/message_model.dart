import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
class MessageModel with _$MessageModel {
  const factory MessageModel({
    required int? id,
    @JsonKey(name: 'chat_id') required int? chatId,
    @JsonKey(name: 'sender_id') required int? senderId,
    @JsonKey(name: 'receiver_id') required int? receiverId,
    required String? content,
    @JsonKey(name: 'read_at') String? readAt,
    @JsonKey(name: 'created_at') required String? createdAt,
    @JsonKey(name: 'updated_at') required String? updatedAt,
    @JsonKey(name: 'reply_to') int? replyTo,
    required SenderModel? sender,
    SenderModel? receiver,
    @JsonKey(name: 'images') List<MessageImageModel>? images,

    /// 🆕 Local image paths (not sent to/from backend)
    List<String>? localImages,
    
    /// 🆕 Suggestions for quick replies
    List<String>? suggestions,
    @JsonKey(name: 'bot_intent') String? botIntent,
    @JsonKey(name: 'bot_confidence') String? botConfidence,
    @JsonKey(name: 'bot_reply_source') String? botReplySource,
    @JsonKey(name: 'bot_metadata') dynamic botMetadata,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
}

@freezed
class MessageImageModel with _$MessageImageModel {
  const factory MessageImageModel({
    required int? id,
    @JsonKey(name: 'message_id') int? messageId,
    required String? path,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _MessageImageModel;

  factory MessageImageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageImageModelFromJson(json);

  const MessageImageModel._();

  String get fullUrl => path != null ? "${ServerConfig.domenStorage}$path" : "";
}

@freezed
class SenderModel with _$SenderModel {
  const factory SenderModel({
    required int? id,
    @JsonKey(name: 'business_id') int? businessId,
    required String? email,
    required String? name,
    required String? role,
    String? phone,
    String? image,
    @JsonKey(name: 'image_business') String? imageBusiness,
    String? lang,
    VisibilityModel? visibility, // <-- updated
    String? sms,
    @JsonKey(name: 'send_email') String? sendEmail,
    String? push,
    String? status,
    @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
    @JsonKey(name: 'created_at') required String? createdAt,
    @JsonKey(name: 'updated_at') required String? updatedAt,
    @JsonKey(name: 'personal_rating') required int? personalRating,
    @JsonKey(name: 'personal_rating_count') required int? personalRatingCount,
    @JsonKey(name: 'business_rating') required int? businessRating,
    @JsonKey(name: 'business_rating_count') required int? businessRatingCount,
  }) = _SenderModel;

  factory SenderModel.fromJson(Map<String, dynamic> json) =>
      _$SenderModelFromJson(json);
  const SenderModel._();

  String get fullUrl => image != null ? "${ServerConfig.domenStorage}$image" : "";
}

@freezed
class VisibilityModel with _$VisibilityModel {
  const factory VisibilityModel({
    required bool profile,
    required bool phone,
    required bool email,
  }) = _VisibilityModel;

  factory VisibilityModel.fromJson(Map<String, dynamic> json) =>
      _$VisibilityModelFromJson(json);
}
