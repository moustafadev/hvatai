// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    List<NotificationItem>? data,
    String? message,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}

@freezed
class NotificationItem with _$NotificationItem {
  const factory NotificationItem({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'notification_type') String? notificationType,
    String? type,
    Message? message,
    @JsonKey(
      fromJson: _readFromJson,
      toJson: _readToJson,
    )
    bool? read,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _NotificationItem;

  factory NotificationItem.fromJson(Map<String, dynamic> json) =>
      _$NotificationItemFromJson(json);
}

bool? _readFromJson(dynamic value) {
  if (value is bool) return value;
  if (value is int) return value == 1;
  return null;
}

dynamic _readToJson(bool? value) {
  return value == null ? null : (value ? 1 : 0);
}

@freezed
class Message with _$Message {
  const factory Message({
    String? title,
    String? body,
    String? timestamp,
    String? type,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
