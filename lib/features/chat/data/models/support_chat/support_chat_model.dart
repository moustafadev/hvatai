import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/chat/data/models/chat/chat_model.dart';
import 'package:hvatai/features/chat/data/models/message/message_model.dart';

part 'support_chat_model.freezed.dart';
part 'support_chat_model.g.dart';

@freezed
class SupportChatModel with _$SupportChatModel {
  const factory SupportChatModel({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'participant_id') int? participantId,
    @JsonKey(name: 'chat_type') String? chatType,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'support_agent_id') int? supportAgentId,
    @JsonKey(name: 'support_status') String? supportStatus,
    @JsonKey(name: 'assigned_at') String? assignedAt,
    @JsonKey(name: 'resolved_at') String? resolvedAt,
    @JsonKey(name: 'first_admin_response_at') String? firstAdminResponseAt,
    @JsonKey(name: 'bot_interaction_count') int? botInteractionCount,
    @JsonKey(name: 'is_escalated') bool? isEscalated,
    @JsonKey(name: 'escalated_at') String? escalatedAt,
    @JsonKey(name: 'escalation_reason') String? escalationReason,
    @JsonKey(name: 'bot_last_response_at') String? botLastResponseAt,
    @JsonKey(name: 'unread_count') int? unreadCount,
    @JsonKey(name: 'last_message') LastMessageModel? lastMessage,
    SupportModel? support,
    @JsonKey(name: 'support_agent') SenderModel? supportAgent,
  }) = _SupportChatModel;

  factory SupportChatModel.fromJson(Map<String, dynamic> json) =>
      _$SupportChatModelFromJson(json);
}

@freezed
class SupportModel with _$SupportModel {
  const factory SupportModel({
    String? name,
    String? image,
  }) = _SupportModel;

  factory SupportModel.fromJson(Map<String, dynamic> json) =>
      _$SupportModelFromJson(json);

  const SupportModel._();

  String get fullImageUrl => image != null ? "${ServerConfig.domenStorage}$image" : "";
}
