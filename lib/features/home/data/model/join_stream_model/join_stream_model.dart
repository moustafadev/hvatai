import 'package:freezed_annotation/freezed_annotation.dart';

part 'join_stream_model.freezed.dart';
part 'join_stream_model.g.dart';

@freezed
class JoinStreamResponse with _$JoinStreamResponse {
  const factory JoinStreamResponse({
    bool? success,
    String? message,
    JoinStreamData? data,
  }) = _JoinStreamResponse;

  factory JoinStreamResponse.fromJson(Map<String, dynamic> json) =>
      _$JoinStreamResponseFromJson(json);
}

@freezed
class JoinStreamData with _$JoinStreamData {
  const factory JoinStreamData({
    /// Primary tokens/ids your SDK will use
    String? token,
    @JsonKey(name: 'rtm_token') String? rtmToken,

    /// Channel / App IDs (duplicates kept to match payload)
    @JsonKey(name: 'channel_name') String? channelName,
    @JsonKey(name: 'app_id') String? appId,
    @JsonKey(name: 'agora_app_id') String? agoraAppId,
    @JsonKey(name: 'agora_token') String? agoraToken,

    /// UIDs
    @JsonKey(name: 'agora_uid') int? agoraUid,
    int? uid,

    /// "0"/"1" in payload → bool here
    @JsonKey(
      name: 'is_publisher',
      fromJson: _stringIntBoolToBool,
      toJson: _boolToStringZeroOne,
    )
    bool? isPublisher,

    @JsonKey(name: 'is_mine') bool? isMine,

    /// ISO8601 string → DateTime
    @JsonKey(name: 'expires_at') DateTime? expiresAt,
  }) = _JoinStreamData;

  factory JoinStreamData.fromJson(Map<String, dynamic> json) =>
      _$JoinStreamDataFromJson(json);
}

/// ------ Helpers ------

bool? _stringIntBoolToBool(dynamic v) {
  if (v == null) return null;
  if (v is bool) return v;
  if (v is num) return v != 0;
  if (v is String) {
    final s = v.trim().toLowerCase();
    if (s == '1' || s == 'true' || s == 'yes') return true;
    if (s == '0' || s == 'false' || s == 'no') return false;
  }
  // Fallback: try to parse int, non-zero => true
  return int.tryParse(v.toString()) != 0;
}

String? _boolToStringZeroOne(bool? v) {
  if (v == null) return null;
  return v ? '1' : '0';
}
