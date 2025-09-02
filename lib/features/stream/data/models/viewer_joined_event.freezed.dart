// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'viewer_joined_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ViewerJoinedEvent _$ViewerJoinedEventFromJson(Map<String, dynamic> json) {
  return _ViewerJoinedEvent.fromJson(json);
}

/// @nodoc
mixin _$ViewerJoinedEvent {
  @JsonKey(name: 'stream_id')
  int? get streamId => throw _privateConstructorUsedError;
  @JsonKey(name: 'channel_name')
  String? get channelName => throw _privateConstructorUsedError;
  Viewer? get viewer => throw _privateConstructorUsedError;
  @JsonKey(name: 'viewer_count')
  int get viewerCount => throw _privateConstructorUsedError;
  DateTime? get timestamp => throw _privateConstructorUsedError;

  /// Serializes this ViewerJoinedEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ViewerJoinedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ViewerJoinedEventCopyWith<ViewerJoinedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewerJoinedEventCopyWith<$Res> {
  factory $ViewerJoinedEventCopyWith(
          ViewerJoinedEvent value, $Res Function(ViewerJoinedEvent) then) =
      _$ViewerJoinedEventCopyWithImpl<$Res, ViewerJoinedEvent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'stream_id') int? streamId,
      @JsonKey(name: 'channel_name') String? channelName,
      Viewer? viewer,
      @JsonKey(name: 'viewer_count') int viewerCount,
      DateTime? timestamp});

  $ViewerCopyWith<$Res>? get viewer;
}

/// @nodoc
class _$ViewerJoinedEventCopyWithImpl<$Res, $Val extends ViewerJoinedEvent>
    implements $ViewerJoinedEventCopyWith<$Res> {
  _$ViewerJoinedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ViewerJoinedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streamId = freezed,
    Object? channelName = freezed,
    Object? viewer = freezed,
    Object? viewerCount = null,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      streamId: freezed == streamId
          ? _value.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as int?,
      channelName: freezed == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      viewer: freezed == viewer
          ? _value.viewer
          : viewer // ignore: cast_nullable_to_non_nullable
              as Viewer?,
      viewerCount: null == viewerCount
          ? _value.viewerCount
          : viewerCount // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of ViewerJoinedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ViewerCopyWith<$Res>? get viewer {
    if (_value.viewer == null) {
      return null;
    }

    return $ViewerCopyWith<$Res>(_value.viewer!, (value) {
      return _then(_value.copyWith(viewer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ViewerJoinedEventImplCopyWith<$Res>
    implements $ViewerJoinedEventCopyWith<$Res> {
  factory _$$ViewerJoinedEventImplCopyWith(_$ViewerJoinedEventImpl value,
          $Res Function(_$ViewerJoinedEventImpl) then) =
      __$$ViewerJoinedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'stream_id') int? streamId,
      @JsonKey(name: 'channel_name') String? channelName,
      Viewer? viewer,
      @JsonKey(name: 'viewer_count') int viewerCount,
      DateTime? timestamp});

  @override
  $ViewerCopyWith<$Res>? get viewer;
}

/// @nodoc
class __$$ViewerJoinedEventImplCopyWithImpl<$Res>
    extends _$ViewerJoinedEventCopyWithImpl<$Res, _$ViewerJoinedEventImpl>
    implements _$$ViewerJoinedEventImplCopyWith<$Res> {
  __$$ViewerJoinedEventImplCopyWithImpl(_$ViewerJoinedEventImpl _value,
      $Res Function(_$ViewerJoinedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ViewerJoinedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streamId = freezed,
    Object? channelName = freezed,
    Object? viewer = freezed,
    Object? viewerCount = null,
    Object? timestamp = freezed,
  }) {
    return _then(_$ViewerJoinedEventImpl(
      streamId: freezed == streamId
          ? _value.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as int?,
      channelName: freezed == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      viewer: freezed == viewer
          ? _value.viewer
          : viewer // ignore: cast_nullable_to_non_nullable
              as Viewer?,
      viewerCount: null == viewerCount
          ? _value.viewerCount
          : viewerCount // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ViewerJoinedEventImpl implements _ViewerJoinedEvent {
  const _$ViewerJoinedEventImpl(
      {@JsonKey(name: 'stream_id') this.streamId,
      @JsonKey(name: 'channel_name') this.channelName,
      this.viewer,
      @JsonKey(name: 'viewer_count') required this.viewerCount,
      this.timestamp});

  factory _$ViewerJoinedEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$ViewerJoinedEventImplFromJson(json);

  @override
  @JsonKey(name: 'stream_id')
  final int? streamId;
  @override
  @JsonKey(name: 'channel_name')
  final String? channelName;
  @override
  final Viewer? viewer;
  @override
  @JsonKey(name: 'viewer_count')
  final int viewerCount;
  @override
  final DateTime? timestamp;

  @override
  String toString() {
    return 'ViewerJoinedEvent(streamId: $streamId, channelName: $channelName, viewer: $viewer, viewerCount: $viewerCount, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewerJoinedEventImpl &&
            (identical(other.streamId, streamId) ||
                other.streamId == streamId) &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.viewer, viewer) || other.viewer == viewer) &&
            (identical(other.viewerCount, viewerCount) ||
                other.viewerCount == viewerCount) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, streamId, channelName, viewer, viewerCount, timestamp);

  /// Create a copy of ViewerJoinedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewerJoinedEventImplCopyWith<_$ViewerJoinedEventImpl> get copyWith =>
      __$$ViewerJoinedEventImplCopyWithImpl<_$ViewerJoinedEventImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ViewerJoinedEventImplToJson(
      this,
    );
  }
}

abstract class _ViewerJoinedEvent implements ViewerJoinedEvent {
  const factory _ViewerJoinedEvent(
      {@JsonKey(name: 'stream_id') final int? streamId,
      @JsonKey(name: 'channel_name') final String? channelName,
      final Viewer? viewer,
      @JsonKey(name: 'viewer_count') required final int viewerCount,
      final DateTime? timestamp}) = _$ViewerJoinedEventImpl;

  factory _ViewerJoinedEvent.fromJson(Map<String, dynamic> json) =
      _$ViewerJoinedEventImpl.fromJson;

  @override
  @JsonKey(name: 'stream_id')
  int? get streamId;
  @override
  @JsonKey(name: 'channel_name')
  String? get channelName;
  @override
  Viewer? get viewer;
  @override
  @JsonKey(name: 'viewer_count')
  int get viewerCount;
  @override
  DateTime? get timestamp;

  /// Create a copy of ViewerJoinedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ViewerJoinedEventImplCopyWith<_$ViewerJoinedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Viewer _$ViewerFromJson(Map<String, dynamic> json) {
  return _Viewer.fromJson(json);
}

/// @nodoc
mixin _$Viewer {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;

  /// Serializes this Viewer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Viewer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ViewerCopyWith<Viewer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewerCopyWith<$Res> {
  factory $ViewerCopyWith(Viewer value, $Res Function(Viewer) then) =
      _$ViewerCopyWithImpl<$Res, Viewer>;
  @useResult
  $Res call({int? id, String? name, String? avatar});
}

/// @nodoc
class _$ViewerCopyWithImpl<$Res, $Val extends Viewer>
    implements $ViewerCopyWith<$Res> {
  _$ViewerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Viewer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ViewerImplCopyWith<$Res> implements $ViewerCopyWith<$Res> {
  factory _$$ViewerImplCopyWith(
          _$ViewerImpl value, $Res Function(_$ViewerImpl) then) =
      __$$ViewerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? avatar});
}

/// @nodoc
class __$$ViewerImplCopyWithImpl<$Res>
    extends _$ViewerCopyWithImpl<$Res, _$ViewerImpl>
    implements _$$ViewerImplCopyWith<$Res> {
  __$$ViewerImplCopyWithImpl(
      _$ViewerImpl _value, $Res Function(_$ViewerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Viewer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$ViewerImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ViewerImpl implements _Viewer {
  const _$ViewerImpl({this.id, this.name, this.avatar});

  factory _$ViewerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ViewerImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? avatar;

  @override
  String toString() {
    return 'Viewer(id: $id, name: $name, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatar);

  /// Create a copy of Viewer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewerImplCopyWith<_$ViewerImpl> get copyWith =>
      __$$ViewerImplCopyWithImpl<_$ViewerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ViewerImplToJson(
      this,
    );
  }
}

abstract class _Viewer implements Viewer {
  const factory _Viewer(
      {final int? id, final String? name, final String? avatar}) = _$ViewerImpl;

  factory _Viewer.fromJson(Map<String, dynamic> json) = _$ViewerImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get avatar;

  /// Create a copy of Viewer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ViewerImplCopyWith<_$ViewerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
