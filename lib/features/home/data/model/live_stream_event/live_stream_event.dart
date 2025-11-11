import 'package:equatable/equatable.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';

enum LiveStreamEventType {
  streamUpdate,
  viewerJoined,
  viewerLeft,
  unknown,
}

enum LiveStreamUpdateType {
  created,
  updated,
  started,
  ended,
  deleted,
  unknown,
}

class LiveStreamViewer extends Equatable {
  final int? id;
  final String? name;
  final String? email;
  final String? image;

  const LiveStreamViewer({this.id, this.name, this.email, this.image});

  factory LiveStreamViewer.fromJson(Map<String, dynamic> json) {
    return LiveStreamViewer(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      image: json['image'] as String?,
    );
  }

  @override
  List<Object?> get props => [id, name, email, image];
}

class LiveStreamEvent extends Equatable {
  final LiveStreamEventType type;
  final LiveStreamUpdateType updateType;
  final StreamDataModel? stream;
  final LiveStreamViewer? viewer;
  final DateTime? timestamp;
  final Map<String, dynamic> raw;

  const LiveStreamEvent({
    required this.type,
    required this.updateType,
    required this.raw,
    this.stream,
    this.viewer,
    this.timestamp,
  });

  factory LiveStreamEvent.fromJson(Map<String, dynamic> json) {
    final type = _parseEventType(json['type'] as String?);
    final updateType = _parseUpdateType(json['update_type'] as String?);
    final streamJson = json['stream'];
    final stream = streamJson is Map<String, dynamic>
        ? StreamDataModel.fromJson(streamJson)
        : null;
    final viewerJson = json['user'];
    final viewer = viewerJson is Map<String, dynamic>
        ? LiveStreamViewer.fromJson(viewerJson)
        : null;
    final timestampValue = json['timestamp'];
    final timestamp = timestampValue is int
        ? DateTime.fromMillisecondsSinceEpoch(timestampValue * 1000)
        : timestampValue is String
            ? DateTime.tryParse(timestampValue)
            : null;

    return LiveStreamEvent(
      type: type,
      updateType: type == LiveStreamEventType.streamUpdate
          ? updateType
          : LiveStreamUpdateType.unknown,
      stream: stream,
      viewer: viewer,
      timestamp: timestamp,
      raw: Map<String, dynamic>.from(json),
    );
  }

  static LiveStreamEventType _parseEventType(String? value) {
    switch (value) {
      case 'stream_update':
        return LiveStreamEventType.streamUpdate;
      case 'viewer_joined':
        return LiveStreamEventType.viewerJoined;
      case 'viewer_left':
        return LiveStreamEventType.viewerLeft;
      default:
        return LiveStreamEventType.unknown;
    }
  }

  static LiveStreamUpdateType _parseUpdateType(String? value) {
    switch (value) {
      case 'created':
        return LiveStreamUpdateType.created;
      case 'updated':
        return LiveStreamUpdateType.updated;
      case 'started':
        return LiveStreamUpdateType.started;
      case 'ended':
        return LiveStreamUpdateType.ended;
      case 'deleted':
        return LiveStreamUpdateType.deleted;
      default:
        return LiveStreamUpdateType.unknown;
    }
  }

  bool get isLiveStatus => stream?.status == 'live';

  @override
  List<Object?> get props => [type, updateType, stream, viewer, timestamp, raw];
}





