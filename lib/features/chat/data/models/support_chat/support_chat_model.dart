import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/chat/data/models/chat/chat_model.dart';

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
    @JsonKey(name: 'unread_count') int? unreadCount,
    @JsonKey(name: 'last_message') LastMessageModel? lastMessage,
  }) = _SupportChatModel;

  factory SupportChatModel.fromJson(Map<String, dynamic> json) =>
      _$SupportChatModelFromJson(json);
}
