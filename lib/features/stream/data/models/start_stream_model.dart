// start_stream_model.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_stream_model.freezed.dart';
part 'start_stream_model.g.dart';

// Main model for the entire response
@freezed
class StartStreamModel with _$StartStreamModel {
    const factory StartStreamModel({
        required bool success,
        required String message,
        required StreamData data,
        required Egress egress,
        required Livekit livekit,
    }) = _StartStreamModel;

    factory StartStreamModel.fromJson(Map<String, dynamic> json) => _$StartStreamModelFromJson(json);
}

// Model for the 'data' object
@freezed
class StreamData with _$StreamData {
    const factory StreamData({
        required int id,
        @JsonKey(name: 'user_id') required int userId,
        required String title,
        required String description,
        @JsonKey(name: 'channel_name') required String channelName,
        @JsonKey(name: 'mux_live_stream_id') required String muxLiveStreamId,
        @JsonKey(name: 'mux_playback_id') required String muxPlaybackId,
        @JsonKey(name: 'mux_stream_key') required String muxStreamKey,
        @JsonKey(name: 'livekit_room_name') required String livekitRoomName,
        @JsonKey(name: 'livekit_egress_id') required String livekitEgressId,
        @JsonKey(name: 'livekit_server_url') required String livekitServerUrl,
        @JsonKey(name: 'livekit_config') required LivekitConfig livekitConfig,
        @JsonKey(name: 'livekit_room_created_at') required DateTime livekitRoomCreatedAt,
        @JsonKey(name: 'livekit_egress_started_at') required DateTime livekitEgressStartedAt,
        required String status,
        @JsonKey(name: 'started_at') required DateTime startedAt,
        @JsonKey(name: 'ended_at') DateTime? endedAt,
        @JsonKey(name: 'is_recording_enabled') required bool isRecordingEnabled,
        @JsonKey(name: 'viewer_count') required int viewerCount,
        @JsonKey(name: 'is_public') required bool isPublic,
        @JsonKey(name: 'created_at') required DateTime createdAt,
        @JsonKey(name: 'updated_at') required DateTime updatedAt,
        @JsonKey(name: 'is_mine') required bool isMine,
    }) = _StreamData;

    factory StreamData.fromJson(Map<String, dynamic> json) => _$StreamDataFromJson(json);
}

// Model for the 'livekit_config' object
@freezed
class LivekitConfig with _$LivekitConfig {
    const factory LivekitConfig({
        @JsonKey(name: 'empty_timeout') required int emptyTimeout,
        @JsonKey(name: 'video_quality') required String videoQuality,
        @JsonKey(name: 'max_participants') required int maxParticipants,
    }) = _LivekitConfig;

    factory LivekitConfig.fromJson(Map<String, dynamic> json) => _$LivekitConfigFromJson(json);
}

// Model for the 'egress' object
@freezed
class Egress with _$Egress {
    const factory Egress({
        @JsonKey(name: 'egress_id') required String egressId,
        @JsonKey(name: 'room_id') required String roomId,
        @JsonKey(name: 'room_name') required String roomName,
        required String status,
        @JsonKey(name: 'started_at') required String startedAt,
        @JsonKey(name: 'room_composite') required RoomComposite roomComposite,
        @JsonKey(name: 'stream_results') required List<StreamResult> streamResults,
    }) = _Egress;

    factory Egress.fromJson(Map<String, dynamic> json) => _$EgressFromJson(json);
}

// Model for the 'room_composite' object within 'egress'
@freezed
class RoomComposite with _$RoomComposite {
    const factory RoomComposite({
        @JsonKey(name: 'room_name')  String? roomName,
         String? layout,
         String? preset,
        @JsonKey(name: 'stream_outputs')  List<StreamOutput>? streamOutputs,
    }) = _RoomComposite;

    factory RoomComposite.fromJson(Map<String, dynamic> json) => _$RoomCompositeFromJson(json);
}

// Model for objects in the 'stream_outputs' list
@freezed
class StreamOutput with _$StreamOutput {
    const factory StreamOutput({
        required String protocol,
        required List<String> urls,
    }) = _StreamOutput;

    factory StreamOutput.fromJson(Map<String, dynamic> json) => _$StreamOutputFromJson(json);
}

// Model for objects in the 'stream_results' list
@freezed
class StreamResult with _$StreamResult {
    const factory StreamResult({
        required String url,
        required String status,
        required String error,
    }) = _StreamResult;

    factory StreamResult.fromJson(Map<String, dynamic> json) => _$StreamResultFromJson(json);
}

// Model for the 'livekit' object
@freezed
class Livekit with _$Livekit {
    const factory Livekit({
        required String token,
        @JsonKey(name: 'room_name') required String roomName,
        @JsonKey(name: 'server_url') required String serverUrl,
        required Permissions permissions,
        @JsonKey(name: 'participant_identity') required String participantIdentity,
    }) = _Livekit;

    factory Livekit.fromJson(Map<String, dynamic> json) => _$LivekitFromJson(json);
}

// Model for the 'permissions' object
@freezed
class Permissions with _$Permissions {
    const factory Permissions({
        required bool canPublish,
        required bool canSubscribe,
        required bool canPublishData,
        required bool canUpdateOwnMetadata,
        required bool roomJoin,
        required bool roomCreate,
        @Default(false) bool roomAdmin, // Defaulted as it's not in the provided JSON but is a common field
    }) = _Permissions;

    factory Permissions.fromJson(Map<String, dynamic> json) => _$PermissionsFromJson(json);
}