import 'package:equatable/equatable.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';

enum LiveStreamEventType {
  streamUpdate,
  viewerJoined,
  viewerLeft,
  unknown,
}

enum LiveStreamUpdateType {
  general,
  created,
  updated,
  started,
  ended,
  deleted,
  mediaUpdated,
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

  /// Supports:
  /// 1) Pusher "stream.updated" payload:
  ///    { stream: {...}, update_type: "...", timestamp: 0 }
  ///
  /// 2) Older SSE payload (if still used):
  ///    { type: "stream_update|viewer_joined|viewer_left", update_type: "...", stream: {...}, user: {...}, timestamp: ... }
  factory LiveStreamEvent.fromJson(Map<String, dynamic> json) {
    // ------------------------------
    // Determine type:
    // - If backend sends "type" -> parse it (SSE old)
    // - Else if this is Pusher "stream.updated" -> assume streamUpdate
    // ------------------------------
    final hasExplicitType = json.containsKey('type');
    final type = hasExplicitType
        ? _parseEventType(json['type'] as String?)
        : LiveStreamEventType.streamUpdate;

    // ------------------------------
    // Determine update type:
    // Pusher sends: general|created|updated|started|ended|deleted|media_updated
    // SSE old sends: created|updated|started|ended|deleted
    // ------------------------------
    final updateType = (type == LiveStreamEventType.streamUpdate)
        ? _parseUpdateType(json['update_type'] as String?)
        : LiveStreamUpdateType.unknown;

    // ------------------------------
    // Stream
    // ------------------------------
    final streamJson = json['stream'];
    final stream = streamJson is Map<String, dynamic>
        ? StreamDataModel.fromJson(streamJson)
        : (streamJson is Map ? StreamDataModel.fromJson(Map<String, dynamic>.from(streamJson)) : null);

    // ------------------------------
    // Viewer (supports multiple shapes):
    // - old: json['user']
    // - sometimes: json['viewer']
    // - pusher new: json['stream']['user']
    // ------------------------------
    Map<String, dynamic>? viewerMap;

    final v1 = json['user'];
    if (v1 is Map<String, dynamic>) viewerMap = v1;
    if (v1 is Map) viewerMap ??= Map<String, dynamic>.from(v1);

    final v2 = json['viewer'];
    if (viewerMap == null && v2 is Map<String, dynamic>) viewerMap = v2;
    if (viewerMap == null && v2 is Map) viewerMap = Map<String, dynamic>.from(v2);

    if (viewerMap == null && streamJson is Map) {
      final nestedUser = streamJson['user'];
      if (nestedUser is Map<String, dynamic>) viewerMap = nestedUser;
      if (nestedUser is Map) viewerMap = Map<String, dynamic>.from(nestedUser);
    }

    final viewer = viewerMap != null ? LiveStreamViewer.fromJson(viewerMap) : null;

    // ------------------------------
    // Timestamp:
    // - int seconds or milliseconds
    // - string datetime
    // ------------------------------
    final timestampValue = json['timestamp'];
    final timestamp = _parseTimestamp(timestampValue);

    return LiveStreamEvent(
      type: type,
      updateType: updateType,
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
      case 'general':
        return LiveStreamUpdateType.general;
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
      case 'media_updated':
        return LiveStreamUpdateType.mediaUpdated;
      default:
        return LiveStreamUpdateType.unknown;
    }
  }

  static DateTime? _parseTimestamp(dynamic value) {
    if (value is int) {
      // Heuristic: if it's too big, it's milliseconds
      // seconds: ~1_700_000_000
      // millis : ~1_700_000_000_000
      if (value > 2000000000000) {
        return DateTime.fromMillisecondsSinceEpoch(value);
      }
      if (value > 2000000000) {
        // still milliseconds but smaller heuristic boundary
        return DateTime.fromMillisecondsSinceEpoch(value);
      }
      // assume seconds
      return DateTime.fromMillisecondsSinceEpoch(value * 1000);
    }

    if (value is String) {
      return DateTime.tryParse(value);
    }

    return null;
  }

  /// Adjust if your backend uses different statuses.
  bool get isLiveStatus {
    final s = stream?.status?.toLowerCase();
    return s == 'live' || s == 'started' || s == 'streaming';
  }

  @override
  List<Object?> get props => [type, updateType, stream, viewer, timestamp, raw];
}
