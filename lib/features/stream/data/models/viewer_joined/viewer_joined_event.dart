// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'viewer_joined_event.freezed.dart';
part 'viewer_joined_event.g.dart';

@freezed
class ViewerJoinedEvent with _$ViewerJoinedEvent {
  const factory ViewerJoinedEvent({
    @JsonKey(name: 'stream_id') int? streamId,
    @JsonKey(name: 'channel_name') String? channelName,
    Viewer? viewer,
    @JsonKey(name: 'viewer_count') required int viewerCount,
    DateTime? timestamp,
  }) = _ViewerJoinedEvent;

  factory ViewerJoinedEvent.fromJson(Map<String, dynamic> json) =>
      _$ViewerJoinedEventFromJson(json);
}

@freezed
class Viewer with _$Viewer {
  const factory Viewer({
    int? id,
    String? name,
    String? avatar,
  }) = _Viewer;

  factory Viewer.fromJson(Map<String, dynamic> json) => _$ViewerFromJson(json);
}
